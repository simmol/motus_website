# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding field 'Block.contents_bg'
        db.add_column('siteblocks_block', 'contents_bg',
                      self.gf('django.db.models.fields.TextField')(null=True, blank=True),
                      keep_default=False)

        # Adding field 'Block.contents_en'
        db.add_column('siteblocks_block', 'contents_en',
                      self.gf('django.db.models.fields.TextField')(null=True, blank=True),
                      keep_default=False)


    def backwards(self, orm):
        # Deleting field 'Block.contents_bg'
        db.delete_column('siteblocks_block', 'contents_bg')

        # Deleting field 'Block.contents_en'
        db.delete_column('siteblocks_block', 'contents_en')


    models = {
        'siteblocks.block': {
            'Meta': {'unique_together': "(('url', 'alias'),)", 'object_name': 'Block'},
            'alias': ('django.db.models.fields.CharField', [], {'max_length': '80', 'db_index': 'True'}),
            'contents': ('django.db.models.fields.TextField', [], {}),
            'contents_bg': ('django.db.models.fields.TextField', [], {'null': 'True', 'blank': 'True'}),
            'contents_en': ('django.db.models.fields.TextField', [], {'null': 'True', 'blank': 'True'}),
            'description': ('django.db.models.fields.CharField', [], {'db_index': 'True', 'max_length': '100', 'null': 'True', 'blank': 'True'}),
            'hidden': ('django.db.models.fields.BooleanField', [], {'default': 'False', 'db_index': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'url': ('django.db.models.fields.CharField', [], {'max_length': '200', 'db_index': 'True'})
        }
    }

    complete_apps = ['siteblocks']