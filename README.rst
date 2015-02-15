My Memory
*********

::

  pyvenv-3.4 --without-pip venv-my-memory
  source venv-my-memory/bin/activate
  wget https://raw.githubusercontent.com/pypa/pip/master/contrib/get-pip.py
  python get-pip.py

  pip install -r requirements.txt

To clean the project::

  make clean

To build the project::

  make html

To deploy the project::

  rsync -av --delete --force --size-only \
    ./build/html/ \
    web@pkimber.net:/home/web/repo/project/pkimber_net/howto/

To convert my CV into a PDF::

  rst2pdf source/info/cv.rst -o cv.pdf
