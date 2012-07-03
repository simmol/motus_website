import models
from django.contrib import admin

from blog.models import Post
from multilingual_model.admin import TranslationInline


### Admin
class PostTranslationInline(TranslationInline):
  model = models.PostTranslation

class PostAdmin(admin.ModelAdmin):
  inlines = [PostTranslationInline]
  search_fields = ["title"]

admin.site.register(Post, PostAdmin)
