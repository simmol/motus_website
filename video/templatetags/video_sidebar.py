from django import template

register = template.Library()

from video.models import Video

@register.inclusion_tag('video/tags/lattest_videos.html', takes_context=True)
def lattest_videos(context):
  lattest_videos = Video.objects.all().filter( galleries__is_public=True).order_by('created')[:6]
  context['lattest_videos'] = lattest_videos
  return context
