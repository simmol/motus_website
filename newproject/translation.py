from modeltranslation.translator import translator, TranslationOptions
from photologue.models import Gallery, Photo
from siteblocks.models import Block

from treemenus.models import MenuItem
from pages.models import Page, Library, Armory, Event, Blog, Category

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


class CategoryTranslationOptions(TranslationOptions):
  fields = ('title',)

# Register apps models
translator.register(MenuItem, MenuItemTranslation)
translator.register(Gallery, GalleryTranslation)
translator.register(Photo, PhotoTranslation)
translator.register(Block, SiteBlocksTranslation)


# Content types
translator.register(Page, PageTranslationOptions)
translator.register(Library, PageTranslationOptions) # Add the proxy for translation too
translator.register(Armory, PageTranslationOptions) # Add the proxy for translation too
translator.register(Event, PageTranslationOptions) # Add the proxy for translation too
translator.register(Blog, PageTranslationOptions) # Add the proxy for translation too

# Categories
translator.register(Category, CategoryTranslationOptions)

