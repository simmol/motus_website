from django.utils.translation import ugettext_lazy as _
from django.db import models
from django.conf import settings

from django.contrib.auth.models import User
from django.core.urlresolvers import reverse
from datetime import datetime, date

class PageManager(models.Manager):

  def get_query_set(self):
    qs = super(PageManager, self).get_query_set()
    return qs.filter(is_active=True)

class Category(models.Model):
  CONTENT_TYPES = settings.CONTENT_TYPES
  content_type = models.CharField(max_length = 3, choices = CONTENT_TYPES, default = 'SYS', editable=True)
  title = models.CharField(max_length=60,  blank=True, null=True)
  slug  = models.SlugField()

  class Meta:
    verbose_name = _('Category')
    verbose_name_plural = _('Categories')

  def __unicode__(self):
    if self.title is None:
      return "None"
    else:
      return self.title

  def get_url(self):
    content_type = settings.CONTENT_TYPES_LABELS[self.content_type]
    return reverse('pages.views.' + content_type + '_category', args=[self.slug])

class Page(models.Model):
  CONTENT_TYPES = settings.CONTENT_TYPES

  # System field for holding different content type
  content_type = models.CharField(max_length = 3, choices = CONTENT_TYPES, default = 'SYS', editable= False)

  title = models.CharField(max_length=60,  blank=True, null=True)
  slug  = models.SlugField()

  category  = models.ForeignKey(Category, related_name='category', null=True, blank=True)
  body      = models.TextField()

  created_by  = models.ForeignKey(User, related_name='created_by', null=True, blank=True)
  edited_by   = models.ForeignKey(User, related_name='edited_by', null=True, blank=True)
  edited      = models.DateTimeField(auto_now = True, null=True)
  created     = models.DateTimeField(auto_now_add=True)
  published   = models.DateTimeField(null=True, blank=True)

  page_image = models.ImageField(upload_to="page_images", null=True, blank=True)

  # Event
  event_start = models.DateTimeField(null=True)
  event_end   = models.DateTimeField(null=True, editable=True)

  is_active = models.BooleanField()

  objects = models.Manager()
  active_objects = PageManager()

  def author(self):
    author = self.created_by.get_full_name() if self.created_by.get_full_name() else self.created_by
    return author

  def save(self, *args, **kwargs):
    if self.is_active == True :
      self.published = datetime.now()
    super(Page, self).save(*args, **kwargs)

  def get_url(self):

    content_type = settings.CONTENT_TYPES_LABELS[self.content_type]
    return reverse('pages.views.' + content_type + '_article', args=[self.slug])


  def __unicode__(self):
    if self.title is None:
      return "None"
    else:
      return self.title

# Library Type
class Library(Page):
  class Meta:
    proxy = True
    verbose_name = _('Library')
    verbose_name_plural = _('Library Articles')

  # Override save method so we set the content type
  def save(self, *args, **kwargs):
    self.content_type = 'LIB'
    super(Library, self).save(*args, **kwargs)

  @staticmethod
  def lattest_articles(article_count = 6):
    return Library.objects.all().filter(is_active=True, content_type="LIB").exclude(body='').order_by('-published')[:article_count]

class Armory(Page):
  class Meta:
    proxy = True
    verbose_name = _('Armory')
    verbose_name_plural = _('Armory Articles')


  # Override save method so we set the content type
  def save(self, *args, **kwargs):
    self.content_type = 'ARM'
    super(Armory, self).save(*args, **kwargs)

class Event(Page):
  class Meta:
    proxy = True
    verbose_name = _('Event')
    verbose_name_plural = _('Events')

  # Override save method so we set the content type
  def save(self, *args, **kwargs):
    self.content_type = 'EVE'
    super(Event, self).save(*args, **kwargs)

  @staticmethod
  def upcomming_events():
    return Event.objects.all().filter(is_active=True, content_type='EVE', event_start__gte = date.today()).order_by('event_start')

class Blog(Page):
  class Meta:
    proxy = True
    verbose_name = _('Blog')
    verbose_name_plural = _('Blog Posts')

  # Override save method so we set the content type
  def save(self, *args, **kwargs):
    self.content_type = 'BLG'
    super(Blog, self).save(*args, **kwargs)

