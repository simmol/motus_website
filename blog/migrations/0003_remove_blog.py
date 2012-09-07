# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models

from django.contrib.contenttypes.models import ContentType

class Migration(SchemaMigration):

    def forwards(self, orm):
        db.delete_table('blog_post')
        for content_type in ContentType.objects.filter(app_label="blog"):
          content_type.delete()
        pass

    def backwards(self, orm):
        pass

    complete_apps = ['blog']
