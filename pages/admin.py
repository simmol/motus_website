from datetime import datetime

from django.core.urlresolvers import reverse
from django.utils.translation import ugettext as _
from django.contrib import admin


from modeltranslation.admin import TranslationAdmin
from imperavi.admin import ImperaviAdmin

from pages.models import Page, Library, Armory, Event, Blog, Category
from pages.filters import PageCategoryFilter


#
# Custom Bulk Actions
#
def make_active(modeladmin, request, queryset):
  queryset.filter(published=None).update(published=datetime.now())
  queryset.update(is_active=1)

def make_unactive(modeladmin, request, queryset):
  queryset.update(is_active=0)
  queryset.update(published=None)

make_active.short_description = _("Activate the Posts");
make_unactive.short_description = _('Deactivate the Posts');


class BasePageAdmin(TranslationAdmin, ImperaviAdmin):
  list_display = ('title_en', 'title_bg', 'slug', 'url', 'is_active', 'category', 'created')
  search_fields = ["title_en", 'title_bg']

  list_filter = (PageCategoryFilter, 'is_active')

  prepopulated_fields = {"slug": ('title',)}
  actions = [make_active, make_unactive]

  def url(self, obj):
    urls_by_type = {
      'LIB': 'library_article',
      'ARM': 'armory_article',
      'BLG': 'blog_article',
      'EVE': 'events_article',
      'SYS': 'page_article',
    }


    try:
      url = reverse('pages.views.' + urls_by_type[obj.content_type], args=[obj.slug])
    except:
      url = 'None'

    return url

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


class BaseCategoryAdmin(TranslationAdmin, ImperaviAdmin):
  list_display = ('title_en', 'title_bg', 'slug', 'url', 'content_type')
  search_fields = ["title_en", 'title_bg', 'content_type']

  list_filter = ('content_type',)
  prepopulated_fields = {"slug": ('title',)}

  def url(self, obj):
    urls_by_type = {
      'LIB': 'library_category',
      'ARM': 'armory_category',
      'BLG': 'blog_category',
      'EVE': 'events_category',
      'SYS': 'page_category',
    }
    return reverse('pages.views.' + urls_by_type[obj.content_type], args=[obj.slug])

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
  fields = ('title', 'slug', 'category', 'body', 'is_active', 'published', 'page_image')


  def formfield_for_foreignkey(self, db_field, request, **kwargs):
    if db_field.name == "category":
      kwargs["queryset"] = Category.objects.filter(content_type='SYS')
      return super(PageAdmin, self).formfield_for_foreignkey(db_field, request, **kwargs)

  # Overriding the query set so we show only the LIB records
  def queryset(self, request):
    qs = super(PageAdmin, self).queryset(request)

    return qs.filter(content_type='SYS')



class LibraryAdmin(BasePageAdmin):
  fields = ('title', 'slug', 'category', 'body', 'is_active', 'published')
  def formfield_for_foreignkey(self, db_field, request, **kwargs):
    if db_field.name == "category":
      kwargs["queryset"] = Category.objects.filter(content_type='LIB')
      return super(LibraryAdmin, self).formfield_for_foreignkey(db_field, request, **kwargs)

  # Overriding the query set so we show only the LIB records
  def queryset(self, request):
    qs = super(LibraryAdmin, self).queryset(request)

    return qs.filter(content_type='LIB')

class ArmoryAdmin(BasePageAdmin):
  fields = ('title', 'slug', 'category', 'body', 'is_active', 'published')
  def formfield_for_foreignkey(self, db_field, request, **kwargs):
    if db_field.name == "category":
      kwargs["queryset"] = Category.objects.filter(content_type='ARM')
      return super(ArmoryAdmin, self).formfield_for_foreignkey(db_field, request, **kwargs)

  # Overriding the query set so we show only the LIB records
  def queryset(self, request):
    qs = super(ArmoryAdmin, self).queryset(request)

    return qs.filter(content_type='ARM')

class EventAdmin(BasePageAdmin):
  fields = ('title', 'slug', 'category', 'body', ('event_start', 'event_end'), 'is_active', 'page_image')
  list_display = ['title_en', 'title_bg', 'slug', 'url', 'category', 'event_start', 'event_end', 'is_active']

  list_filter = (PageCategoryFilter, 'is_active')
  def formfield_for_foreignkey(self, db_field, request, **kwargs):
    if db_field.name == "category":
      kwargs["queryset"] = Category.objects.filter(content_type='EVE')
      return super(EventAdmin, self).formfield_for_foreignkey(db_field, request, **kwargs)

  # Overriding the query set so we show only the LIB records
  def queryset(self, request):
    qs = super(EventAdmin, self).queryset(request)

    return qs.filter(content_type='EVE')

class BlogAdmin(BasePageAdmin):
  fields = ('title', 'slug', 'category', 'body', 'is_active', 'published')
  def formfield_for_foreignkey(self, db_field, request, **kwargs):
    if db_field.name == "category":
      kwargs["queryset"] = Category.objects.filter(content_type='BLG')
      return super(BlogAdmin, self).formfield_for_foreignkey(db_field, request, **kwargs)

  # Overriding the query set so we show only the LIB records
  def queryset(self, request):
    qs = super(BlogAdmin, self).queryset(request)

    return qs.filter(content_type='BLG')


admin.site.register(Page, PageAdmin)
admin.site.register(Library, LibraryAdmin)
admin.site.register(Armory, ArmoryAdmin)
admin.site.register(Event, EventAdmin)
admin.site.register(Blog, BlogAdmin)

admin.site.register(Category, BaseCategoryAdmin)
