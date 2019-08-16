My Memory
*********

::

  virtualenv --python=python3 venv-sphinx
  # or
  python3 -m venv venv-sphinx
  source venv-sphinx/bin/activate

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

  apt install pandoc
  pandoc source/info/cv.rst -o test.pdf -V papersize:a4
