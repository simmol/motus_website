from django.db import models
from django.conf import settings

from django.contrib.auth.models import User

class PageManager(models.Manager):

  def get_query_set(self):
    qs = super(PageManager, self).get_query_set()
    return qs.filter(is_active=True)

class Category(models.Model):
  CONTENT_TYPES = settings.CONTENT_TYPES
  content_type = models.CharField(max_length = 3, choices = CONTENT_TYPES, default = 'SYS', editable=True)
  title = models.CharField(max_length=60,  blank=True, null=True)
  slug  = models.SlugField()

  def __unicode__(self):
    if self.title is None:
      return "None"
    else:
      return self.title

class Page(models.Model):
  CONTENT_TYPES = settings.CONTENT_TYPES
  #TODO move content_types to settings_local.py

  # System field for holding different content type
  content_type = models.CharField(max_length = 3, choices = CONTENT_TYPES, default = 'SYS', editable= False)

  title = models.CharField(max_length=60,  blank=True, null=True)
  slug  = models.SlugField()

  category = models.ForeignKey(Category, related_name='category', null=True, blank=True)

  body  = models.TextField()

  created_by = models.ForeignKey(User, related_name='created_by', null=True, blank=True)
  edited_by  = models.ForeignKey(User, related_name='edited_by', null=True, blank=True)
  edited  = models.DateTimeField(auto_now = True, null=True)
  created = models.DateTimeField(auto_now_add=True)

  is_active = models.BooleanField()

  objects = models.Manager()
  active_objects = PageManager()

  def __unicode__(self):
    if self.title is None:
      return "None"
    else:
      return self.title

# Library Type
class Library(Page):
  class Meta:
    proxy = True

  # Override save method so we set the content type
  def save(self, *args, **kwargs):
    self.content_type = 'LIB'
    super(Library, self).save(*args, **kwargs)

class Armory(Page):
  class Meta:
    proxy = True

  # Override save method so we set the content type
  def save(self, *args, **kwargs):
    self.content_type = 'ARM'
    super(Armory, self).save(*args, **kwargs)

class Event(Page):
  class Meta:
    proxy = True

  # Override save method so we set the content type
  def save(self, *args, **kwargs):
    self.content_type = 'EVE'
    super(Event, self).save(*args, **kwargs)

  @staticmethod
  def upcomming_events():
    return Event.objects.all().filter(is_active=True, content_type='EVE')

class Blog(Page):
  class Meta:
    proxy = True

  # Override save method so we set the content type
  def save(self, *args, **kwargs):
    self.content_type = 'BLG'
    super(Blog, self).save(*args, **kwargs)

