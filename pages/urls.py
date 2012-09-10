from django.conf.urls.defaults import *
from django.views.generic import TemplateView, DetailView, ListView
from django.conf import settings

urlpatterns = patterns('pages.views',
  url('page/(?P<page_id>\d+)', 'page', name='page-details'),
  url('page/(?P<slug>[-\w]+)', 'page', name='page-details-slug'),

  url('library/article/(?P<slug>[-\w]+)', 'article', name='article'),
)
