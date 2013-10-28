SDAPS
*****

data acquisition with paper-based surveys

http://sdaps.org/

irc #sdaps on freenode

Dev
===

::

  git clone https://github.com/sdaps/sdaps.git
  cd sdaps

  sudo apt-get install python-distutils-extra
  sudo apt-get install python-cairo-dev
  sudo apt-get install libtiff5-dev
  sudo apt-get install python-zbar

  mkvirtualenv --system-site-packages sdaps

  workon sdaps
  python ./setup.py build

  # download 'example.tex' from http://sdaps.org/Documentation/Tutorial
  # to the source folder.

  workon sdaps
  mkdir ~/repo/temp/sdaps

  python sdaps.py ~/repo/temp/sdaps/example setup_tex example.tex
  # if the command fails, remove the temp folder each time
  # rmdir ~/repo/temp/sdaps/example

  ls ~/repo/temp/sdaps/example/
  evince ~/repo/temp/sdaps/example/questionnaire.pdf

  # download 'example.tif' from http://sdaps.org/Documentation/Tutorial
  # to the source folder.

  python sdaps.py ~/repo/temp/sdaps/example add example.tif
  python sdaps.py ~/repo/temp/sdaps/example recognize
  python sdaps.py ~/repo/temp/sdaps/example gui
  python sdaps.py ~/repo/temp/sdaps/example report

Session 2 (using GIMP to answer the questions)::

  python sdaps.py ~/repo/temp/sdaps/001 setup_tex 001.tex
  pdftoppm -tiff  ~/repo/temp/sdaps/001/questionnaire.pdf answer
  gimp answer-1.tif
  convert -monochrome answer-1.tif a1.tif
  python sdaps.py ~/repo/temp/sdaps/001 add a1.tif
  python sdaps.py ~/repo/temp/sdaps/001 recognize
  python sdaps.py ~/repo/temp/sdaps/001 gui

Session 3 (create unique stamp or pupil ID for each questionnaire)::

  mkdir ~/repo/dev/wip/marking/
  cd ~/repo/dev/wip/marking/
  mkvirtualenv --system-site-packages dev_marking
  touch README.rst
  add2virtualenv ../../../src/sdaps/
  cp ~/repo/src/sdaps/001.tex 002.tex
  # Uncomment 'print_questionnaire_id,'
  vim 002.tex
  python ~/repo/src/sdaps/sdaps.py 002 setup_tex 002.tex
  # Simple list of number... one per line
  vim pupils.txt
  python ~/repo/src/sdaps/sdaps.py 002 stamp -f pupils.txt
  evince 002/stamped_1.pdf

Tips
====

Convert PDF to image::

  pdftoppm -tiff questionnaire.pdf prefix

Convert image to monochrome tiff::

  convert -monochrome prefix-1.tif questionnaire.tif
