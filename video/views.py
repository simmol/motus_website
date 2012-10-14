from django.core.paginator import Paginator, InvalidPage, EmptyPage
from django.core.urlresolvers import reverse

from django.template import RequestContext
from django.shortcuts import render_to_response, get_object_or_404, get_list_or_404

from video.models import Video, VideoGallery

def gallery(request):
  galleries = get_list_or_404(VideoGallery, is_public=True)
  return render_to_response('video/gallery.html', {'galleries': galleries}, context_instance=RequestContext(request))

def gallery_details(request, slug):
  gallery_details = get_object_or_404(VideoGallery, slug=slug, is_public=True)
  return render_to_response('video/gallery_details.html', {'gallery_details': gallery_details}, context_instance=RequestContext(request))

def video_details(request, slug):
  video = get_object_or_404(Video, slug=slug, is_active=True)
  return render_to_response('video/video_details.html', {'video': video}, context_instance=RequestContext(request))
