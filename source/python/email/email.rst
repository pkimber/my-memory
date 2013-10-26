email
*****

Links
=====

- :doc:`links`
- ``../../misc/howto/python/untwisting-python-network-programming.html``
  Untwisting Python Network Programming
  copy of article from
  http://www.onlamp.com/pub/a/python/2006/08/10/untwisting-python-network-programming.html
  O'Reilly, python DevCenter
- http://www.eskimo.com/~jet/python/examples/mail/smtp1.html

Mime Types
==========

::

  import mimetypes
  ext = mimetypes.guess_extension(part.get_content_type())

Parsing
=======

- http://www.python.org/doc/lib/module-email.html
- http://www.devshed.com/c/a/Python/Python-Email-Libraries-SMTP-and-Email-Parsing/
  Python Email Libraries: SMTP and Email Parsing
- http://jobmachine.net/sourcer/spaminfo3
  List of Common Headers
- http://bruno.im/2009/dec/18/decoding-emails-python/
  Decoding emails in Python
- http://code.activestate.com/recipes/302086/
  Strip attachments from an email message

  ::

    >>> import email
    >>> fp = open('email.txt')
    >>> m = email.message_from_file(fp)
    >>> m.keys()
    ['Message-ID', 'MIME-Version', 'Content-Type', 'Content-Transfer-Encoding', 'Received', 'Date', 'From', 'To', 'Subject']
    >>> m['from']
    >>> m['subject']
    >>> m['to']
    >>> m.get_payload(decode = True)

  To view the ``docstring``:

  ::

    import email
    help(email.Message.Message)

IMAP
====

- http://docs.python.org/library/imaplib.html
  imaplib — IMAP4 protocol client

  ::

    import getpass, imaplib

    #M = imaplib.IMAP4()
    M = imaplib.IMAP4('localhost', 143)
    #M.login(getpass.getuser(), getpass.getpass())
    M.login('patrick', 'password')
    M.select()
    typ, data = M.search(None, 'ALL')
    for num in data[0].split():
        typ, data = M.fetch(num, '(RFC822)')
        print 'Message %s\n%s\n' % (num, data[0][1])
    M.close()
    M.logout()

POP3
====

- http://www.python.org/doc/lib/pop3-objects.html
  POP3 Objects
- http://docs.python.org/lib/pop3-example.html
  POP3 Example

  ::

    >>> import getpass, poplib
    >>> M = poplib.POP3('localhost')
    >>> M.user('blue')
    '+OK'
    >>> M.pass_(getpass.getpass())
    Password:
    '+OK Welcome blue'
    >>> numMessages = len(M.list()[1])
    >>> for i in range(numMessages):
    ...   for j in M.retr(i+1)[1]:
    ...     print j
    >>> M.quit()
    '+OK Microsoft Windows POP3 Service Version 1.0 <4075893578@dev.mycompany> signing off.'

A Java sample (with some site documentation), can be viewed here:
http://toybox/hg/core/file/tip/development/sample-email-client/

SMTP
====

Sample - Standard SMTP (Apache James)
-------------------------------------

This will work with the default install of
:doc:`../../james/install`, Apache - James.

::

  import smtplib

  def mail(serverURL=None, sender='', to='', subject='', text=''):
      """
      Usage:
      mail('somemailserver.com', 'me@example.com', 'someone@example.com', 'test', 'This is a test')
      """
      headers = "From: %s\r\nTo: %s\r\nSubject: %s\r\n\r\n" % (sender, to, subject)
      message = headers + text
      mail_server = smtplib.SMTP(serverURL)
      mail_server.sendmail(sender, to, message)
      mail_server.quit()

  mail('localhost', 'patrick@localhost', 'trac@localhost', 'Help!', 'Please help me...')


**Note**: I think the ``to`` parameter is a list of email addresses e.g:

::

  recipients = [
      'me@mail.com',
      'me@mycompany.com',
      ]

Sample - Google (GMail) SMTP
----------------------------

::

  mail_server = smtplib.SMTP('smtp.gmail.com', 587)
  mail_server.ehlo()
  mail_server.starttls()
  mail_server.ehlo()
  mail_server.login('gmail-user-name', 'gmail-password')

Testing
=======

Send
----

**For testing purposes only**... we can use sockets:

::

  # From:
  # http://pleac.sourceforge.net/pleac_python/sockets.html
  # Example: Connect to a server (tcp)
  # For real applications you should use smtplib.

  import socket
  s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
  s.connect(("cluster3.eu.messagelabs.com", 25)) # SMTP
  print s.recv(1024)
  s.send("mail from: <me@mycompany.com>\n")
  print s.recv(1024)
  s.send("rcpt to: me@mycompany.com\n")
  print s.recv(1024)
  s.send("data\n")
  print s.recv(1024)
  s.send("From: Python Lover\nSubject: Python is better then perl\n\nYES!\n.\n")
  print s.recv(1024)
  s.close()

Server
------

http://code.djangoproject.com/changeset/9793
Django, Changeset 9793

The easiest way to test your project's use of e-mail is to use a "dumb"
e-mail server that receives the e-mails locally and displays them to the
terminal, but does not actually send anything.  Python has a built-in way to
accomplish this with a single command:

::

  python -m smtpd -n -c DebuggingServer localhost:1025

Note: Also see the testing section in :doc:`links`.
