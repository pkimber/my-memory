email
*****

Sample
======

``send_mail`` is a convenient wrapper around Django's ``EmailMessage`` class
(which provides advanced features such as attachments, multipart emails, and
full control over email headers):

::

  from django.core.mail import send_mail

  send_mail(
      'Feedback',
      'We love your site...,
      'me@gmail.com',
      ['admin@example.com']

