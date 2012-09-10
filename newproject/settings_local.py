# Django project site specific settings
# All non site specific settings should go into the settings.py file
# Copy this file as settings_local.py and adjust it to your site.
# The settings_local.py contains only site specific information and should not
# be part of the svn repository of the project. It should be part of the
# hosting svn repository.

import os
PROJECT_PATH = os.path.abspath(os.path.join(os.path.dirname(__file__), os.pardir))

DEBUG = True
TEMPLATE_DEBUG = True

DEFAULT_FROM_EMAIL = ''
SERVER_EMAIL = DEFAULT_FROM_EMAIL

LANGUAGE_CODE = 'bg'

ADMIN_LANGUAGE_CODE = 'en'

gettext = lambda s: s
LANGUAGES = [
    ('bg', gettext('Bulgarian')),
    ('en', gettext('English')),
]


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

AUTH_PROFILE_MODULE = "profiles.UserProfile"

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
  'sekizai',
  'south',
  'tagging',
  'modeltranslation',
  #
  'blog', #XXX to be removed in the future - at the moment it stay only for the cleanup migration to work
  # Custom
  'photologue',
  'menu',
  'imperavi',
  'siteblocks',
  'pages',
  'profiles',
  'rosetta',
)

IMPERAVI_CUSTOM_SETTINGS = {
  'lang': 'en',
}

FIXTURE_DIRS = (
  PROJECT_PATH + '/fixtures/',
)

LOCALE_PATHS = ( 
  os.path.join(PROJECT_PATH, 'locale/'),
)
