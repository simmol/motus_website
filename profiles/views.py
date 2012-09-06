from django.core.paginator import Paginator, InvalidPage, EmptyPage
from django.core.urlresolvers import reverse

from django.template import RequestContext
from django.shortcuts import render_to_response, get_object_or_404

from profiles.models import UserProfile

def profile(request, user_id):
  user = get_object_or_404(UserProfile, user=user_id)

  return render_to_response("profiles/public.html", dict(user=user), context_instance=RequestContext(request))
