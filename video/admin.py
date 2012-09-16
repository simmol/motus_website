from django.utils.translation import ugettext as _
from django.contrib import admin

from modeltranslation.admin import TranslationAdmin

from video.models import Video

# Custom Bulk Actions

def make_active(modeladmin, request, queryset):
  queryset.update(is_active=1)

def make_unactive(modeladmin, request, queryset):
  queryset.update(is_active=0)

make_active.short_description = _("Activate the Videos");
make_unactive.short_description = _('Deactivate the Videos');

class VideoAdmin(TranslationAdmin):
  list_display = ('title_en', 'title_bg', 'slug', 'is_active', 'created')
  search_fields = ["title_en", 'title_bg']

  prepopulated_fields = {"slug": ('title',)}
  actions = [make_active, make_unactive]

  class Media:
    js = (
      '/static/modeltranslation/js/force_jquery.js',
      'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.2/jquery-ui.min.js',
      '/static/modeltranslation/js/tabbed_translation_fields.js',
    )
    css = {
      'screen': ('/static/modeltranslation/css/tabbed_translation_fields.css',),
    }

  def save_model(self, request, obj, form, change):
    instance = form.save(commit=False)
    if not instance.created_by:
      instance.created_by = request.user

    instance.edited_by = request.user
    instance.save()
    form.save_m2m()
    return instance


admin.site.register(Video, VideoAdmin)