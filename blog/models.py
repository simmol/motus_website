from django.db import models

class PostManager(models.Manager):
  def get_query_set(self):
    qs = super(PostManager, self).get_query_set()
    return qs.filter(is_active=True)


class Post(models.Model):
  title = models.CharField(max_length=60,  blank=True, null=True)
  slug  = models.SlugField()
  body  = models.TextField()

  created = models.DateTimeField(auto_now_add=True)
  is_active = models.BooleanField()

  objects = models.Manager()
  active_objects = PostManager()

  def __unicode__(self):
    if self.title is None:
      return "None"
    else:
      return self.title

