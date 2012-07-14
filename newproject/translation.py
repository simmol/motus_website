from modeltranslation.translator import translator, TranslationOptions
from blog.models import Post
from menu.models import MenuItem
from photologue.models import Gallery, Photo

class PostTranslationOptions(TranslationOptions):
  fields = ('title', 'body')

class MenuItemTranslation(TranslationOptions):
  fields = ('title',)

class GalleryTranslation(TranslationOptions):
  fields = ('title', 'description')

class PhotoTranslation(TranslationOptions):
  fields = ('title', 'caption')

translator.register(Post, PostTranslationOptions)
translator.register(MenuItem, MenuItemTranslation)
translator.register(Gallery, GalleryTranslation)
translator.register(Photo, PhotoTranslation)
