from django.db import models
from django.contrib.auth.models import User

class UserProfile(models.Model):
  user = models.ForeignKey(User, unique=True)
  
  showname = models.BooleanField()
  
  avatar = models.ImageField(upload_to = 'media/users/avatars', blank=True)
  desc = models.TextField(blank = True)
 
  skype = models.CharField(max_length = 100, blank = True)
  telephone = models.CharField(max_length = 100, blank = True)
  showemail = models.BooleanField()
  
  
  def __unicode__(self):
    if self.name is None:
      return "None"
    else:
      return self.name