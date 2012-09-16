from django.utils.translation import ugettext_lazy as _

from django.contrib.admin import SimpleListFilter

from pages.models import Category

class PageCategoryFilter(SimpleListFilter):
  title = _('Category')

  parameter_name = 'category'

  def lookups(self, request, model_admin):
    qs = model_admin.queryset(request)

    categories = Category.objects.all()
    for category in categories:
      if qs.filter(category=category):
        yield (category.id, category.title)

  def queryset(self, request, queryset):
    value = self.value()

    if value:
      return queryset.filter(category=value)
    else:
      return queryset
