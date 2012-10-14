from django.shortcuts import get_object_or_404, render_to_response, get_list_or_404
from django.template import RequestContext

from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

from django.conf import settings

# Models
from pages.models import Page, Library, Armory, Event, Blog

#
# Pages details
#

def page_article(request, page_id=0, slug=''):
  if slug != '':
    page = get_object_or_404(Page, slug=slug, content_type="SYS", is_active=True)
  elif page_id:
    page = get_object_or_404(Page, pk=page_id, content_type="SYS", is_active=True)

  return render_to_response('pages/page.html', {'page': page}, context_instance=RequestContext(request))

def library_article(request, slug):
  page = get_object_or_404(Library, slug=slug, content_type="LIB", is_active=True)
  return render_to_response('pages/library_details.html', {'page': page}, context_instance=RequestContext(request))

def armory_article(request, slug):
  page = get_object_or_404(Armory, slug=slug, content_type="ARM", is_active=True)
  return render_to_response('pages/armory_details.html', {'page': page}, context_instance=RequestContext(request))


def blog_article(request, slug):
  page = get_object_or_404(Blog, slug=slug, content_type="BLG", is_active=True)
  return render_to_response('pages/blog_details.html', {'page': page}, context_instance=RequestContext(request))


def events_article(request, slug):
  page = get_object_or_404(Event, slug=slug, content_type="EVE", is_active=True)

  return render_to_response('pages/event_details.html', {'page': page}, context_instance=RequestContext(request))

#
# Main listings
#

def pages_articles(request, content_type):
  page = request.GET.get('page')

  pages = Page.objects.all().filter(is_active=True, content_type=content_type)
  paginator = Paginator(pages, 5)

  content_type_label = settings.CONTENT_TYPES_LABELS[content_type]
  try:
    pages = paginator.page(page)
  except PageNotAnInteger:
    pages = paginator.page(1)
  except EmptyPage:
    # If page is out of range (e.g. 9999), deliver last page of results.
    pages = paginator.page(paginator.num_pages)

  return render_to_response('pages/pages_articles_listing.html', {'pages': pages, 'content_type_label': content_type_label}, context_instance=RequestContext(request))


#
# Category pages
#
def page_category(request, category):
  page = request.GET.get('page')

  pages = get_list_or_404(Blog, category__slug=category, is_active=True)
  paginator = Paginator(pages, 3)

  try:
      pages = paginator.page(page)
  except PageNotAnInteger:
      # If page is not an integer, deliver first page.
      pages = paginator.page(1)
  except EmptyPage:
      # If page is out of range (e.g. 9999), deliver last page of results.
      pages = paginator.page(paginator.num_pages)

  return render_to_response('pages/blog_category.html', {'pages': pages, 'category': category}, context_instance=RequestContext(request))


def blog_category(request, category):
  page = request.GET.get('page')

  pages = get_list_or_404(Blog, category__slug=category, is_active=True)
  paginator = Paginator(pages, 3)

  try:
      pages = paginator.page(page)
  except PageNotAnInteger:
      # If page is not an integer, deliver first page.
      pages = paginator.page(1)
  except EmptyPage:
      # If page is out of range (e.g. 9999), deliver last page of results.
      pages = paginator.page(paginator.num_pages)

  return render_to_response('pages/blog_category.html', {'pages': pages, 'category': category}, context_instance=RequestContext(request))

def events_category(request, category):
  page = request.GET.get('page')

  pages = get_list_or_404(Event, category__slug=category, is_active=True)
  paginator = Paginator(pages, 3)

  try:
      pages = paginator.page(page)
  except PageNotAnInteger:
      # If page is not an integer, deliver first page.
      pages = paginator.page(1)
  except EmptyPage:
      # If page is out of range (e.g. 9999), deliver last page of results.
      pages = paginator.page(paginator.num_pages)

  return render_to_response('pages/event_category.html', {'pages': pages, 'category': category}, context_instance=RequestContext(request))

def armory_category(request, category):
  page = request.GET.get('page')

  pages = get_list_or_404(Armory, category__slug=category, is_active=True)
  paginator = Paginator(pages, 3)

  try:
      pages = paginator.page(page)
  except PageNotAnInteger:
      # If page is not an integer, deliver first page.
      pages = paginator.page(1)
  except EmptyPage:
      # If page is out of range (e.g. 9999), deliver last page of results.
      pages = paginator.page(paginator.num_pages)

  return render_to_response('pages/armory_category.html', {'pages': pages, 'category': category}, context_instance=RequestContext(request))

def library_category(request, category):
  page = request.GET.get('page')

  pages = get_list_or_404(Library, category__slug=category, is_active=True)
  paginator = Paginator(pages, 3)

  try:
      pages = paginator.page(page)
  except PageNotAnInteger:
      # If page is not an integer, deliver first page.
      pages = paginator.page(1)
  except EmptyPage:
      # If page is out of range (e.g. 9999), deliver last page of results.
      pages = paginator.page(paginator.num_pages)

  return render_to_response('pages/library_category.html', {'pages': pages, 'category': category}, context_instance=RequestContext(request))
