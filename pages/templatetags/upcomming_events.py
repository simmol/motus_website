from django import template

register = template.Library()

from pages.models import Event

APP_LABEL = 'pages'

def upcomming_events( context):
  events = Event.upcomming_events()

  context['events'] = events
  return context

register.inclusion_tag('%s/upcomming_events.html' % APP_LABEL, takes_context=True)(upcomming_events)

