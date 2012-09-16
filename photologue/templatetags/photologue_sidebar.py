from django import template

register = template.Library()

from photologue.models import Photo

@register.inclusion_tag('photologue/tags/lattest_photos.html', takes_context=True)
def lattest_photos(context):
  lattest_photos = Photo.objects.all().filter(is_public=True, galleries__is_public=True).order_by('date_added')[:6]
  context['lattest_photos'] = lattest_photos
  return context
