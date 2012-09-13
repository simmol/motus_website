from modeltranslation.translator import translator, TranslationOptions

from photologue.models import Gallery, Photo
from treemenus.models import MenuItem, Menu


from siteblocks.models import Block
from pages.models import Page, Library, Armory, Event, Blog

class MenuItemTranslation(TranslationOptions):
  fields = ('caption',)

class MenuTranslation(TranslationOptions):
  fields =()

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

#translator.register(Menu, MenuTranslation)

# Content types
translator.register(Page, PageTranslationOptions)
translator.register(Library, PageTranslationOptions) # Add the proxy for translation too
translator.register(Armory, PageTranslationOptions) # Add the proxy for translation too
translator.register(Event, PageTranslationOptions) # Add the proxy for translation too
#translator.register(Blog, PageTranslationOptions) # Add the proxy for translation too
