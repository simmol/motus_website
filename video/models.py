from django.db import models

from django.contrib.auth.models import User

from urlparse import urlparse, parse_qs

class Video(models.Model):
  title = models.CharField(max_length=100,  blank=True, null=True)
  slug  = models.SlugField()
  url = models.CharField(max_length=100, blank=False, null=False)
  description = models.TextField(blank=True)
  
  created_by = models.ForeignKey(User, related_name='video_created_by', null=True, blank=True)
  edited_by  = models.ForeignKey(User, related_name='video_edited_by', null=True, blank=True)
  edited  = models.DateTimeField(auto_now = True, null=True)
  created = models.DateTimeField(auto_now_add=True)
  
  is_active = models.BooleanField()
  
  embedUrl = models.CharField(max_length=20, blank = True)
  
  def save(self, *args, **kwargs):
    if self.url:
      p = urlparse(self.url)
      if p.netloc == 'youtu.be':
        self.embedUrl = p.path[1:]
      elif p.netloc == 'www.youtube.com':
        self.embedUrl = parse_qs(p.query)['v'][0]
      
    super(Video, self).save(*args, **kwargs)
    
  
  def __unicode__(self):
    if self.title is None:
      return "None"
    else:
      return self.title
