cgi
***

Want to set-up apache to run python CGI scripts:

The configuration appears to be stored in:

::

  /etc/apache2/conf/commonapache2.conf

The following line:

::

  ScriptAlias /cgi-bin/ /var/www/localhost/cgi-bin/

tells us that cgi scripts can be stored in:

::

  /var/www/localhost/cgi-bin/

Created a python script:

::

  #!/usr/bin/env python
  # Filename: test.py
  print 'Content-type: text/plain\n'
  print 'Python CGIs work!'

Made the script executable and copied it to cgi-bin:

::

  chmod +x test.py
  mv test.py /var/www/localhost/cgi-bin/

Then entering the following in my browser:

http://10.0.0.3/cgi-bin/test.py

All works!!!

