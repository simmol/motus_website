from django.conf.urls.defaults import url, patterns

urlpatterns = patterns('pages.views',
  url('^page/(?P<page_id>\d+)', 'page_article', name='page-details'),
  url('^page/(?P<slug>[-\w]+)', 'page_article', name='page-details-slug'),

  url('^library/article/(?P<slug>[-\w]+)', 'library_article', name='library-article'),
  url('^armory/article/(?P<slug>[-\w]+)', 'armory_article', name='armory-article'),
  url('^blog/article/(?P<slug>[-\w]+)', 'blog_article', name='blog-article'),
  url('^events/event/(?P<slug>[-\w]+)', 'event', name='event'),

  url('^pages$', 'pages_articles', {'content_type':'SYS'}, name="pages-articles"),
  url('^library$', 'pages_articles', {'content_type':'LIB'}, name='library0articles'),
  url('^armory', 'pages_articles', {'content_type':'ARM'}, name='armory-articles'),
  url('^events', 'pages_articles', {'content_type':'EVE'}, name='events-articles'),
  url('^blog', 'pages_articles', {'content_type':'BLG'}, name='blog-articles'),

  url('^page/category/(?P<category>[-\w]+)', 'page_category', name='page-category'),
  url('^library/category/(?P<category>[-\w]+)', 'library_category', name='library-category'),
  url('^armory/category/(?P<category>[-\w]+)', 'armory_category', name='armory-category'),
  url('^events/category/(?P<category>[-\w]+)', 'events_category', name='events-category'),
  url('^blog/category/(?P<category>[-\w]+)', 'blog_category', name='blog-category'),
)
