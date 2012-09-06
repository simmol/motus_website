from django.utils.translation import ugettext as _
from django.contrib import admin

from profiles.models import UserProfile

### Admin
class ProfileAdmin(admin.ModelAdmin):
  list_display = ('user', 'name')
  search_fields = ["user"]

admin.site.register(UserProfile, ProfileAdmin)
