# Generated by Django 5.1.4 on 2025-01-02 23:40

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('usuario', '0007_alter_usuario_uid'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='usuario',
            name='UID',
        ),
    ]