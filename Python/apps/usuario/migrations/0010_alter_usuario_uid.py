# Generated by Django 5.1.4 on 2025-01-02 23:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('usuario', '0009_usuario_uid'),
    ]

    operations = [
        migrations.AlterField(
            model_name='usuario',
            name='UID',
            field=models.TextField(blank=True, max_length=50),
        ),
    ]
