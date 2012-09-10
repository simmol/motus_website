from django.shortcuts import get_object_or_404, render_to_response
from django.http import HttpResponseRedirect, HttpResponse
from django.core.urlresolvers import reverse
from django.template import RequestContext
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

# Models
from pages.models import Page, Library, Armory, Event, Blog

def page(request, page_id=0, slug=''):
  if slug != '':
    page = get_object_or_404(Page, slug=slug, content_type="SYS")
  elif page_id:
    page = get_object_or_404(Page, pk=page_id, content_type="SYS")

  return render_to_response('pages/page.html', {'page': page}, context_instance=RequestContext(request))


def article(request, slug):
  page = get_object_or_404(Library, slug=slug, content_type="LIB")
  return render_to_response('pages/article.html', {'page': page}, context_instance=RequestContext(request))
