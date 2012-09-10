from django.conf.urls.defaults import *
from django.contrib import admin
from django.views.generic import TemplateView
from django.conf import settings

admin.autodiscover()

urlpatterns = patterns('',
    (r'^i18n/', include('django.conf.urls.i18n')),
)

if 'rosetta' in settings.INSTALLED_APPS:
  urlpatterns += patterns('',
    url(r'^admin/translation/', include('rosetta.urls')),
  )

if 'pages' in settings.INSTALLED_APPS:
  urlpatterns += patterns('', 
    (r'^', include('pages.urls'))
  )

if 'profiles' in settings.INSTALLED_APPS:
  urlpatterns += patterns('profiles.views',
    url(r'^user/(?P<user_id>\d)/', 'profile', name='user-id'),
  )

if 'photologue' in settings.INSTALLED_APPS:
  urlpatterns += patterns('',
    (r'^photologue/', include('photologue.urls')),
  )

if 'imperavi' in settings.INSTALLED_APPS:
  urlpatterns += patterns('',
    (r'^imperavi/', include('imperavi.urls')),
  )

urlpatterns += patterns('', 
  (r'^admin/', include(admin.site.urls)),
  url(r'^admin/doc/', include('django.contrib.admindocs.urls')),
)
if settings.DEBUG:
  urlpatterns = patterns('',
    url(r'^media/(?P<path>.*)$', 'django.views.static.serve',
        {'document_root': settings.MEDIA_ROOT, 'show_indexes': True}),
    url(r'', include('django.contrib.staticfiles.urls')),
  ) + urlpatterns

