Details
*******

To find more information about the process:

- Find the ID of the process using the ``ps`` command e.g. the ID of the
  following process is 1974:

  ::

    openerp   1974  0.4 34.7 502328 358976 ?       Sl   Mar21 280:15 /usr/bin/python ./openerp-server.py --config=/etc/openerp-server.conf --price_accuracy=4

- Change into the ``proc`` folder for the process e.g:

  ::

    cd /proc/1974/

- The folder has lots of *files* representing really useful information e.g:

  ::

    -r--r--r--  1 openerp nogroup 0 2010-04-30 15:40 cmdline
    -rw-r--r--  1 openerp nogroup 0 2010-04-30 15:39 coredump_filter
    -r--r--r--  1 openerp nogroup 0 2010-04-30 15:39 cpuset
    lrwxrwxrwx  1 openerp nogroup 0 2010-04-30 15:39 cwd -> /usr/lib/openerp-server
    -r--------  1 openerp nogroup 0 2010-04-30 15:39 environ
    lrwxrwxrwx  1 openerp nogroup 0 2010-04-30 15:39 exe -> /usr/bin/python2.5

  - ``cwd`` is the current working folder for the process.
  - ``exe`` is the running executable.
  - if we ``cat`` the ``cmdline`` or ``environ`` *files* we can see
    the command line and environment.
  - ``ls -l fd`` will show file descriptors (I think).

- To view all files and ports open by the process, pass the process ID to
  the ``lsof`` command:

  ::

    lsof -p 1974
