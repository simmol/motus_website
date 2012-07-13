from modeltranslation.translator import translator, TranslationOptions
from blog.models import Post
from menu.models import MenuItem

class PostTranslationOptions(TranslationOptions):
  fields = ('title', 'body')

class MenuItemTranslation(TranslationOptions):
  fields = ('title',)

translator.register(Post, PostTranslationOptions)
translator.register(MenuItem, MenuItemTranslation)
