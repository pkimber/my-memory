tar and zip
***********

tar
===

::

  import tarfile
  tar = None
  try:
      tar = tarfile.open(self._get_archive_file_name(), 'r:gz')
      tar.extractall(self._get_install_folder())
  finally:
      if tar != None: tar.close()

zip
===

copy/delete
-----------

`Delete file from zipfile with the ZipFile Module`_

::

  import zipfile

  in_file = 'target/myapp-sdk-0.1.jar'
  out_file = 'sdk/myapp-sdk-0.1.jar'

  zin = None
  zout = None
  try:
      zin = zipfile.ZipFile (in_file, 'r')
      zout = zipfile.ZipFile (out_file, 'w')
      for item in zin.infolist():
          print item.filename
          buffer = zin.read(item.filename)
          # To delete files... put your check in here:
          zout.writestr(item, buffer)
  finally:
      if zout != None: zout.close()
      if zin != None: zin.close()

unzip
-----

::

  import archive.unzip
  uz = archive.unzip.unzip()
  uz.extract(self._get_archive_folder(), self._get_install_folder())

zip
---

::

  import zipfile
  zf = None
  try:
      zf = zipfile.ZipFile('resources.zip', 'w')
      zf.write('res/values/attrs.xml')
      zf.write('res/values/colors.xml')
      zf.write('res/values/styles.xml')
  finally:
      if zf != None: zf.close()


.. _`Delete file from zipfile with the ZipFile Module`: http://stackoverflow.com/questions/513788/delete-file-from-zipfile-with-the-zipfile-module

