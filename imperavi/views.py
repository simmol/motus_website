import hashlib
import md5
import json
import os.path
import imghdr
from django.views.decorators.csrf import csrf_exempt
from django.views.decorators.http import require_POST
from django.contrib.auth.decorators import user_passes_test
from django.core.files.storage import default_storage
from django.utils.encoding import smart_str
from django.http import HttpResponse, HttpResponseForbidden
from django.conf import settings

from forms import ImageForm, FileForm

from sorl.thumbnail import get_thumbnail

from photologue.models import Gallery, Photo
from django.template.defaultfilters import slugify

UPLOAD_PATH = getattr(settings, 'IMPERAVI_UPLOAD_PATH', 'imperavi/')


@require_POST
@csrf_exempt
@user_passes_test(lambda user: user.is_staff)
def upload_image(request, upload_path=None):
    form = ImageForm(request.POST, request.FILES)
    if form.is_valid():
        image = form.cleaned_data['file']
        if image.content_type not in ['image/png', 'image/jpg', 'image/jpeg', 'image/pjpeg']:
            return HttpResponse('Bad image format')

        try:
          gallery = Gallery.objects.get(title_slug='pages_photos')
        except:
          gallery = Gallery(
                title = 'Site Pages Photos',
                title_slug = 'pages_photos',
                is_public = False,
                description = 'System album for holding images added directly to the pages',
              )
          gallery.save()


        image_name, extension = os.path.splitext(image.name)
        m = md5.new(smart_str(image_name))
        image_name = '{0}{1}'.format(m.hexdigest(), extension)

        try:
          photo = Photo(image=image, title=image_name, title_slug = slugify(image_name), caption='')
        except:
          photo = Photo(image=image_name, title_slug = slugify(image_name), caption='')

        photo.save()
        gallery.photos.add(photo)
        image_url = photo.get_display_url()

        # Original Code
        m = md5.new(smart_str(image_name))
        hashed_name = '{0}{1}'.format(m.hexdigest(), extension)
        image_path = default_storage.save(os.path.join(upload_path or UPLOAD_PATH, hashed_name), image)
       # image_url = default_storage.url(image_path)
        return HttpResponse(json.dumps({'filelink': image_url}))
    return HttpResponseForbidden()


@user_passes_test(lambda user: user.is_staff)
def uploaded_images_json(request, upload_path=None):
    images = []
    try:
      gallery = Gallery.objects.get(title_slug='pages_photos')
      for photo in gallery.latest():
        images.append({"thumb": photo.get_admin_thumbnail_url(), "image": photo.get_display_url()})
    except:
      pass
    return HttpResponse(json.dumps(images))

@require_POST
@csrf_exempt
@user_passes_test(lambda user: user.is_staff)
def upload_file(request, upload_path=None, upload_link=None):
    form = FileForm(request.POST, request.FILES)
    if form.is_valid():
        uploaded_file = form.cleaned_data['file']
        path = os.path.join(upload_path or UPLOAD_PATH, uploaded_file.name)
        image_path = default_storage.save(path, uploaded_file)
        image_url = default_storage.url(image_path)
        if upload_link:
            return HttpResponse(image_url)
        return HttpResponse(json.dumps({'filelink': image_url, 'filename': uploaded_file.name}))
    return HttpResponseForbidden()
