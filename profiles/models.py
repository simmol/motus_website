from django.db import models
from django.forms import ModelForm
from django.contrib.auth.models import User

class UserProfile(models.Model):
  user = models.OneToOneField(User, related_name='userProfile')   
  
  showname = models.BooleanField()
  showemail = models.BooleanField()
  
  avatar = models.ImageField(upload_to = 'media/users/avatars', blank=True)
  description = models.TextField(blank = True)
 
  skype = models.CharField(max_length = 100, blank = True)
  telephone = models.CharField(max_length = 100, blank = True)
  
  
  
  def __unicode__(self):
    if self.user.username is None:
      return "None"
    else:
      return self.user.username
    
class ProfileForm(ModelForm):
  class Meta:
    model = UserProfile
    exclude = ('user.username', 'user.is_staff', 'is_active', 'is_superuser', 
               'last_login', 'date_joined')