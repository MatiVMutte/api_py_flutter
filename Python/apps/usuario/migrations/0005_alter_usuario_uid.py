# Generated by Django 5.1.4 on 2025-01-02 23:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('usuario', '0004_alter_usuario_uid'),
    ]

    operations = [
        migrations.AlterField(
            model_name='usuario',
            name='UID',
            field=models.TextField(max_length=50, null=True),
        ),
    ]