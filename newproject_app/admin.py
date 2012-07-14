from django.utils.translation import ugettext as _
from django.contrib import admin

from modeltranslation.admin import TranslationAdmin

from photologue.models import Gallery, Photo
from photologue.admin import GalleryAdmin, PhotoAdmin

class MediaTranslation:
  class Media:
    js = (
      '/static/modeltranslation/js/force_jquery.js',
      'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.2/jquery-ui.min.js',
      '/static/modeltranslation/js/tabbed_translation_fields.js',
    )
    css = {
      'screen': ('/static/modeltranslation/css/tabbed_translation_fields.css',),
    }

class GalleryTranslation(GalleryAdmin, TranslationAdmin, MediaTranslation):
  pass

class PhotoTranslation(PhotoAdmin, TranslationAdmin, MediaTranslation):
  pass

admin.site.unregister(Gallery)
admin.site.unregister(Photo)

admin.site.register(Gallery, GalleryTranslation)
admin.site.register(Photo, PhotoTranslation)

