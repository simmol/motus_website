# Django project site specific settings
# All non site specific settings should go into the settings.py file
# Copy this file as settings_local.py and adjust it to your site.
# The settings_local.py contains only site specific information and should not
# be part of the svn repository of the project. It should be part of the
# hosting svn repository.

import os
PROJECT_PATH = os.path.dirname(__file__)

DEBUG = True
TEMPLATE_DEBUG = True

DEFAULT_FROM_EMAIL = ''
SERVER_EMAIL = DEFAULT_FROM_EMAIL

LANGUAGE_CODE = 'bg'

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql', # Add 'postgresql_psycopg2', 'postgresql', 'mysql', 'sqlite3' or 'oracle'.
        'NAME': 'newproject',                      # Or path to database file if using sqlite3.
        'USER': 'root',                      # Not used with sqlite3.
        'PASSWORD': '',                  # Not used with sqlite3.
        'HOST': '',                      # Set to empty string for localhost. Not used with sqlite3.
        'PORT': '',                      # Set to empty string for default. Not used with sqlite3.
    }
}

INTERNAL_IPS = ('127.0.0.1', )

MIDDLEWARE_CLASSES = (
    'django.middleware.common.CommonMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.locale.LocaleMiddleware',
    'utils.middleware.admin_local.AdminLocaleMiddleware',
    # Uncomment the next line for simple clickjacking protection:
    # 'django.middleware.clickjacking.XFrameOptionsMiddleware',
)

gettext = lambda s: s
LANGUAGES = [
    ('bg', 'Bulgarian'),
    ('en', 'English'),
]

ADMIN_LANGUAGE_CODE = 'en'

MODELTRANSLATION_TRANSLATION_REGISTRY = "newproject.translation"

PHOTOLOGUE_MAXBLOCK =  1024 * 2 ** 10

TEMPLATE_CONTEXT_PROCESSORS = (
  "django.contrib.auth.context_processors.auth",
  "django.core.context_processors.debug",
  "django.core.context_processors.i18n",
  "django.core.context_processors.media",
  "django.core.context_processors.static",
  "django.contrib.messages.context_processors.messages",
  "django.core.context_processors.request",
)

LOCAL_INSTALLED_APPS = (
    'mptt',
    'menus',
    'sekizai',
    'south',
    'tagging',
    'modeltranslation',
    # Custom
    'blog',
    'photologue',
    'menu',
    'imperavi',
    'blocks',
    'siteblocks',
)

