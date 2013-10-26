Snippets - uwsgi
****************

::

  [program:uwsgi]
  user=web
  command=sh /home/web/opt/runinenv.sh /home/web/repo/uwsgi/venv_uwsgi uwsgi --emperor /home/web/repo/uwsgi/vassals/
  autostart=true
  autorestart=true

The ``runinenv.sh`` shell script
(from `Django/nginx/uWSGI/Supervisor On Debian`_
`run a command in virtualenv, useful for supervisord`_):

::

  #!/bin/bash
  VENV=$1
  if [ -z $VENV ]; then
      echo "usage: runinenv [virtualenv_path] CMDS"
      exit 1
  fi
  . ${VENV}/bin/activate
  shift 1
  echo "Executing $@ in ${VENV}"
  exec "$@"
  deactivate


.. _`run a command in virtualenv, useful for supervisord`: https://gist.github.com/826961
.. _`Django/nginx/uWSGI/Supervisor On Debian`: http://bash-shell.net/blog/2012/apr/28/django-nginx-uwsgi-supervisor-on-debian/
