from django.utils.translation import ugettext as _
from django.contrib import admin

from modeltranslation.admin import TranslationAdmin
from imperavi.admin import ImperaviStackedInlineAdmin
from imperavi.admin import ImperaviAdmin

from pages.models import Page, Library, Armory, Event, Blog

def make_active(modeladmin, request, queryset):
  queryset.update(is_active=1)

def make_unactive(modeladmin, request, queryset):
  queryset.update(is_active=0)

make_active.short_description = _("Activate the Posts");
make_unactive.short_description = _('Deactivate the Posts');



class BasePageAdmin(TranslationAdmin, ImperaviAdmin):
  list_display = ('title', 'is_active', 'created')
  search_fields = ["title"]

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


class PageAdmin(BasePageAdmin):

  # Overriding the query set so we show only the LIB records
  def queryset(self, request):
    qs = super(PageAdmin, self).queryset(request)
    return qs.filter(content_type='SYS')



class LibraryAdmin(BasePageAdmin):

  # Overriding the query set so we show only the LIB records
  def queryset(self, request):
    qs = super(LibraryAdmin, self).queryset(request)

    return qs.filter(content_type='LIB')

class ArmoryAdmin(BasePageAdmin):

  # Overriding the query set so we show only the LIB records
  def queryset(self, request):
    qs = super(ArmoryAdmin, self).queryset(request)

    return qs.filter(content_type='ARM')

class EventAdmin(BasePageAdmin):

  # Overriding the query set so we show only the LIB records
  def queryset(self, request):
    qs = super(EventAdmin, self).queryset(request)

    return qs.filter(content_type='EVE')

class BlogAdmin(BasePageAdmin):

  # Overriding the query set so we show only the LIB records
  def queryset(self, request):
    qs = super(BlogAdmin, self).queryset(request)

    return qs.filter(content_type='BLG')


admin.site.register(Page, PageAdmin)
admin.site.register(Library, LibraryAdmin)
admin.site.register(Armory, ArmoryAdmin)
admin.site.register(Event, EventAdmin)
admin.site.register(Blog, BlogAdmin)
