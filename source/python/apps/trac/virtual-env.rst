Virtual Environment
*******************

Prerequisites
=============

::

  sudo apt-get install python-setuptools
  sudo easy_install virtualenv
  sudo apt-get install apache2-utils

Set-up
======

::

  virtualenv --no-site-packages test-trac
  cd test-trac/
  source bin/activate
  easy_install yolk
  yolk -l
  easy_install trac
  yolk -l
  trac-admin ~/temp/test-trac initenv
  tracd --port 8040 /home/patrick/temp/test-trac
  sudo htpasswd -c /home/patrick/temp/test-trac/.htpasswd patrick
  tracd --port 8040 --basic-auth=test-trac,/home/patrick/temp/test-trac/.htpasswd,sample.com /home/patrick/temp/test-trac
  deactivate
