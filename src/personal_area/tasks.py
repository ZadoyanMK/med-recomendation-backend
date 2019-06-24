from __future__ import absolute_import, unicode_literals
from django.core.mail import send_mail
from celery import shared_task
from django.conf import settings


@shared_task
def send_message(title="Title", description="Description"):
    send_mail(
        title,
        description,
        settings.EMAIL_HOST_USER,
        [settings.EMAIL_HOST_USER],
        fail_silently=False,

    )

    return 'Message was sent!'


@shared_task
def add_to_featured(serializer=None, user_id=None, eq_id=None):
    if serializer:
        serializer.save()
        return 'Added to featured!'

    return 'Nothing to save!'
