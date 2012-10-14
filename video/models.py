import random

from datetime import datetime
from urlparse import urlparse, parse_qs

from django.db import models
from django.core.urlresolvers import reverse
from django.utils.translation import ugettext_lazy as _
from django.contrib.auth.models import User


class Video(models.Model):
  title = models.CharField(max_length=100,  blank=True, null=True)
  slug  = models.SlugField()
  url = models.CharField(max_length=100, blank=False, null=False,
            help_text = "Supports only youtube links (www.youtube.com and youtu.be)")
  description = models.TextField(blank=True,)

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

  def get_thumbnail(self):
    return "http://img.youtube.com/vi/" + self.embedUrl + "/0.jpg"

class VideoGallery(models.Model):
  date_added = models.DateTimeField(_('date published'), default=datetime.now)
  title = models.CharField(_('title'), max_length=100, unique=True)
  slug = models.SlugField(_('title slug'), unique=True, null=True,
                        help_text=_('A "slug" is a unique URL-friendly title for an object.'))
  description = models.TextField(_('description'), blank=True)
  is_public = models.BooleanField(_('is public'), default=True,
                        help_text=_('Public galleries will be displayed in the default views.'))
  videos = models.ManyToManyField(Video, related_name='galleries', verbose_name=_('videos'),
                                  null=True, blank=True)

  video_count=models.IntegerField(default=0, blank=True)


  class Meta:
    ordering = ['-date_added']
    get_latest_by = 'date_added'
    verbose_name = _('gallery')
    verbose_name_plural = _('galleries')

  def __unicode__(self):
    return self.title

  def get_videos(self):
    if self.is_public == True:
      return self.videos.filter(is_active = True)
    else:
      return []

  def sample(self, count=0, public=True):
    if self.video_count==0:
      self.video_count=self.video_counting()
    if count == 0 or count > self.video_count:
      count = self.video_count
    if public:
      video_set = self.get_videos()
    else:
      video_set = self.videos.all()
    return random.sample(video_set, count)

  def gallery_thumbnail(self):
    return self.sample(1)[0].get_thumbnail()

  def video_counting(self, public=True):
    if public:
      return self.get_videos().count()
    else:
      return self.videos.all().count()
  video_count.short_description = _('count')


