from django.contrib import admin

from django.contrib.auth.models import User
from django.contrib.auth.admin import UserAdmin
from profiles.models import UserProfile

### Admin
class UserProfileInline(admin.StackedInline):
    model = UserProfile

class ProfileAdmin(UserAdmin):

  inlines = [UserProfileInline]

  list_display = ('username', 'first_name', 'showemail')
  search_fields = ["username"]

  fieldsets = (
    (None, {
      'fields': ('username', ('first_name', 'last_name'), 'email',
                  'password',)
    }),
    ('Advansed settings', {
      'classes': ('collapse',),
      'fields': ('is_staff', 'is_active', 'is_superuser', ('last_login', 'date_joined'), )
    }),
  )


  ### UserProfiles model fields

  def showemail(self, instance):
    return instance.userProfile.showemail

  def showname(self, instance):
    return instance.userProfile.showname

  def avatar(self, instance):
    return instance.userProfile.avatar

  def desc(self, instance):
    return instance.userProfile.description

  def skype(self, instance):
    return instance.userProfile.skype

  def telephone(self, instance):
    return instance.userProfile.telephone

admin.site.unregister(User)
admin.site.register(User, ProfileAdmin)
