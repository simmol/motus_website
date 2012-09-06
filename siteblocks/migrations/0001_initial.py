# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'Block'
        db.create_table('siteblocks_block', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('alias', self.gf('django.db.models.fields.CharField')(max_length=80, db_index=True)),
            ('description', self.gf('django.db.models.fields.CharField')(db_index=True, max_length=100, null=True, blank=True)),
            ('url', self.gf('django.db.models.fields.CharField')(max_length=200, db_index=True)),
            ('contents', self.gf('django.db.models.fields.TextField')()),
            ('hidden', self.gf('django.db.models.fields.BooleanField')(default=False, db_index=True)),
        ))
        db.send_create_signal('siteblocks', ['Block'])

        # Adding unique constraint on 'Block', fields ['url', 'alias']
        db.create_unique('siteblocks_block', ['url', 'alias'])


    def backwards(self, orm):
        # Removing unique constraint on 'Block', fields ['url', 'alias']
        db.delete_unique('siteblocks_block', ['url', 'alias'])

        # Deleting model 'Block'
        db.delete_table('siteblocks_block')


    models = {
        'siteblocks.block': {
            'Meta': {'unique_together': "(('url', 'alias'),)", 'object_name': 'Block'},
            'alias': ('django.db.models.fields.CharField', [], {'max_length': '80', 'db_index': 'True'}),
            'contents': ('django.db.models.fields.TextField', [], {}),
            'description': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '100', 'null': 'True', 'blank': 'True'}),
            'hidden': ('django.db.models.fields.BooleanField', [], {'default': 'False', 'db_index': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'url': ('django.db.models.fields.CharField', [], {'max_length': '200', 'db_index': 'True'})
        }
    }

    complete_apps = ['siteblocks']