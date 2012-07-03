from django.core.paginator import Paginator, InvalidPage, EmptyPage
from django.core.urlresolvers import reverse

from  django.shortcuts import render_to_response

from blog.models import Post, PostTranslation

def main(request):
  """ Main listing """
  posts = Post.active_objects.all().order_by("-created")
  paginator = Paginator(posts, 1)

  try:
    page = int(request.GET.get("page", '1'))
  except ValueError: page = 1

  try:
    posts = paginator.page(page)
    pass
  except (InvalidPage, EmptyPage):
    posts = paginator.page(paginator.num_pages)
    pass

  return render_to_response("blog/list.html", dict(posts=posts, user=request.user))

