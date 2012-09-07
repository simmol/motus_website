# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models

from django.contrib.contenttypes.models import ContentType

class Migration(SchemaMigration):

    def forwards(self, orm):
        # Deleting model 'Post'
        db.delete_table('blog_post')
        for content_type in ContentType.objects.filter(app_label='blog'):
            content_type.delete()

    def backwards(self, orm):
        # Adding model 'Post'
        db.create_table('blog_post', (
            ('body', self.gf('django.db.models.fields.TextField')()),
            ('is_active', self.gf('django.db.models.fields.BooleanField')(default=False)),
            ('title_en', self.gf('django.db.models.fields.CharField')(max_length=60, null=True, blank=True)),
            ('slug', self.gf('django.db.models.fields.SlugField')(max_length=50)),
            ('created', self.gf('django.db.models.fields.DateTimeField')(auto_now_add=True, blank=True)),
            ('title', self.gf('django.db.models.fields.CharField')(max_length=60, null=True, blank=True)),
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('body_bg', self.gf('django.db.models.fields.TextField')(null=True, blank=True)),
            ('title_bg', self.gf('django.db.models.fields.CharField')(max_length=60, null=True, blank=True)),
            ('body_en', self.gf('django.db.models.fields.TextField')(null=True, blank=True)),
        ))
        db.send_create_signal('blog', ['Post'])


    models = {
        
    }

    complete_apps = ['blog']
