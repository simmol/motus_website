from django.conf.urls.defaults import *
from django.contrib import admin
from django.views.generic import TemplateView
from django.conf import settings

import blog

admin.autodiscover()

urlpatterns = patterns('',

    #Admin
    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),
    (r'^admin/', include(admin.site.urls)),
    (r'^i18n/', include('django.conf.urls.i18n')),

    #App url include
    url(r'^', include('newproject_app.appurls')),
    #url(r'^newproject/$', include('newproject.appurls')),

    #Static Links
#    url(r'^', TemplateView.as_view(template_name='home.html'), name='home'),
)

#urlpatterns += patterns('newproject_site.newproject.views',
#   url(r'^newproject/$', 'newproject_view', name='newproject'),
#)

#urlpatterns += patterns('',
#    url(r'', include('feincms.urls')),
#)

urlpatterns += patterns('blog.views',
  url(r'^blog/post/(?P<post_slug>[a-z\-0-9]*)/', 'post', name='post'),
  url(r'^blog/post/(?P<post_id>\d)/', 'post', name='post-id'),
  url(r'^blog', 'main', name='blog'),
)

urlpatterns += patterns('',
  (r'^photologue/', include('photologue.urls')),
)

urlpatterns += patterns('',
  (r'^imperavi/', include('imperavi.urls')),
)

if settings.DEBUG:
    urlpatterns = patterns('',
    url(r'^media/(?P<path>.*)$', 'django.views.static.serve',
        {'document_root': settings.MEDIA_ROOT, 'show_indexes': True}),
    url(r'', include('django.contrib.staticfiles.urls')),
) + urlpatterns

