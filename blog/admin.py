from django.utils.translation import ugettext as _
from django.contrib import admin

from modeltranslation.admin import TranslationAdmin
from imperavi.admin import ImperaviStackedInlineAdmin
from imperavi.admin import ImperaviAdmin

from blog.models import Post

def make_active(modeladmin, request, queryset):
  queryset.update(is_active=1)

make_active.short_description = _("Activate the Posts");

### Admin
class PostAdmin(TranslationAdmin, ImperaviAdmin):
  list_display = ('title', 'is_active', 'created')
  search_fields = ["title"]

  prepopulated_fields = {"slug": ('title',)}
  actions = [make_active]

  class Media:
    js = (
      '/static/modeltranslation/js/force_jquery.js',
      'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.2/jquery-ui.min.js',
      '/static/modeltranslation/js/tabbed_translation_fields.js',
    )
    css = {
      'screen': ('/static/modeltranslation/css/tabbed_translation_fields.css',),
    }

admin.site.register(Post, PostAdmin)
