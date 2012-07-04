from django.core.paginator import Paginator, InvalidPage, EmptyPage
from django.core.urlresolvers import reverse

from django.template import RequestContext
from django.shortcuts import render_to_response

from blog.models import Post

def main(request):
  """ Main listing """
  posts = Post.active_objects.all().order_by("-created")
  paginator = Paginator(posts, 3)

  try:
    page = int(request.GET.get("page", '1'))
  except ValueError: page = 1

  try:
    posts = paginator.page(page)
    pass
  except (InvalidPage, EmptyPage):
    posts = paginator.page(paginator.num_pages)
    pass

  return render_to_response("blog/list.html", dict(posts=posts, user=request.user), context_instance=RequestContext(request))


def post(request, post_id=0, post_slug=""):
  try:
    if post_slug:
      post = Post.active_objects.get(slug = post_slug)
    else:
      post = Post.active_objects.get(pk = post_id)

  except Post.DoesNotExist:
    raise Http404

  return render_to_response("blog/post.html", dict(post=post, user=request.user), context_instance=RequestContext(request))
