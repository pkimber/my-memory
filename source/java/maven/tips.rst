Tips
****

Logging
=======

http://www.nabble.com/logging-t1665711.html

if you're on *nix, and you want to ensure that you see any severe errors in
your logfile, you should also add '2*&1' to that command line. Usually, I'm
casually watching my builds, but want to have the option to go back and sift
through it, so I use this*:

::

  mvn clean test 2>&1 | tee output.log

or on Windows:

::

  mvn clean test > output.log 2>&1

