from multilingual_model.models import MultilingualModel, MultilingualTranslation
from django.db import models

class PostManager(models.Manager):
  def get_query_set(self):
    qs = super(PostManager, self).get_query_set()
    return qs.filter(is_active=True)


class Post(MultilingualModel):
  created = models.DateTimeField(auto_now_add=True)
  is_active = models.BooleanField()

  objects = models.Manager()
  active_objects = PostManager()

  def __unicode__(self):
    return self.unicode_wrapper('title', default='Unnamed')


class PostTranslation(MultilingualTranslation):
  class Meta:
    unique_together = ('parent', 'language_code')

  parent = models.ForeignKey('Post', related_name='translations')

  title = models.CharField(max_length=60,  blank=True, null=True)
  body  = models.TextField()

  def __unicode__(self):
    return self.title

