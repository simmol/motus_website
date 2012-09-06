from django.utils.translation import ugettext as _
from django.contrib import admin

from django.contrib.auth.models import User

from profiles.models import UserProfile

### Admin
class UserProfileInline(admin.StackedInline):
    model = UserProfile
    
class ProfileAdmin(admin.ModelAdmin):
  
  inlines = [UserProfileInline]

  
  
  list_display = ('username', 'first_name', 'showemail')
  search_fields = ["username"]
  
  def showemail(self, instance):
    return instance.userProfile.showemail

admin.site.unregister(User)
admin.site.register(User, ProfileAdmin)
