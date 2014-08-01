Report
******

.. highlight:: bash

To report on the log files using https://github.com/piglei/uwsgi-sloth:

Create a virtual environment and install ``uwsgi-sloth``::

  deactivate
  virtualenv venv-temp
  source venv-temp/bin/activate
  pip install uwsgi-sloth

Get a copy of your uWSGI log file::

  uwsgi-sloth analyze -f your-uwsgi.log --output=report.html
  firefox report.html &
