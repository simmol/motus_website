from django.utils.translation import ugettext as _
from django.contrib import admin

from profiles.models import UserProfile

### Admin
class ProfileAdmin(admin.ModelAdmin):
  fieldsets = [
        (None,               {'fields': ['user', 'showname']}),
        ('Information',     {'fields': ['avatar', 'desc']}),
        ('Contact',          {'fields': ['skype', 'telephone','showemail']}),
  ]
  
  list_display = ('user', 'showemail')
  search_fields = ["user"]

admin.site.register(UserProfile, ProfileAdmin)
