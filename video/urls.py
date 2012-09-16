from django.conf.urls.defaults import url, patterns

urlpatterns = patterns('video.views',
  url('^video/(?P<slug>[-\w]+)', 'video_details', name='video-details-slug'),
  url('^gallery/(?P<slug>[-\w]+)', 'gallery_details', name='gallery-details-slug'),
  url('^', 'gallery', name='gallery-slug'),
  
)