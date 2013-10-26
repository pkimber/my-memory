pkimber.net
***********

::

  make clean

  make html
  rsync -av --delete --force --size-only ./build/html/ web@drop-d:/home/web/repo/project/pkimber_net/howto/
  fab -H web@146.185.144.181 sync

To convert my CV into a PDF::

  rst2pdf source/info/cv.rst -o cv.pdf
