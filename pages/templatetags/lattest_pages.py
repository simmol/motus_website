from django import template

register = template.Library()

from pages.models import Library

APP_LABEL = 'pages'

def lattest_articles( context):
  articles = Library.lattest_articles()

  context['articles'] = articles
  return context

register.inclusion_tag('%s/tags/lattest_articles.html' % APP_LABEL, takes_context=True)(lattest_articles)

