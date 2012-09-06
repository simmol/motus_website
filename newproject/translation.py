from modeltranslation.translator import translator, TranslationOptions

from menu.models import MenuItem
from photologue.models import Gallery, Photo

from siteblocks.models import Block
from blog.models import Post
from pages.models import Page, Library, Armory, Event, Blog

class PostTranslationOptions(TranslationOptions):
  fields = ('title', 'body')

class MenuItemTranslation(TranslationOptions):
  fields = ('title',)

class GalleryTranslation(TranslationOptions):
  fields = ('title', 'description')

class PhotoTranslation(TranslationOptions):
  fields = ('title', 'caption')

class SiteBlocksTranslation(TranslationOptions):
  fields = ('contents'),

class PageTranslationOptions(TranslationOptions):
  fields = ('title', 'body')

translator.register(MenuItem, MenuItemTranslation)
translator.register(Gallery, GalleryTranslation)
translator.register(Photo, PhotoTranslation)

translator.register(Block, SiteBlocksTranslation)
translator.register(Post, PostTranslationOptions)

# Content types
translator.register(Page, PageTranslationOptions)
translator.register(Library, PageTranslationOptions) # Add the proxy for translation too
translator.register(Armory, PageTranslationOptions) # Add the proxy for translation too
translator.register(Event, PageTranslationOptions) # Add the proxy for translation too
translator.register(Blog, PageTranslationOptions) # Add the proxy for translation too
