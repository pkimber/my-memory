My Memory
*********

.. note:: We will use python 2 for this project until fabric is able to use
          python 3

To create the python **2** virtual environment for this project::

  virtualenv venv-my-memory
  source venv-my-memory/bin/activate
  pip install -r requirements.txt

To activate the environment::

  source venv-my-memory/bin/activate

To clean the project::

  make clean

To build the project::

  make html
  rsync -av --delete --force --size-only \
    ./build/html/ \
    web@kb-a:/home/web/repo/project/pkimber_net/howto/

To convert my CV into a PDF::

  rst2pdf source/info/cv.rst -o cv.pdf
