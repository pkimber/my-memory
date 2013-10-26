File
****

.. highlight:: c++

Links
=====

- `Using logger without Application class`_

Temporary
=========

::

  #include "Poco/TemporaryFile.h"

  std::string fileName;
  fileName = Poco::TemporaryFile().tempName();

Note:

- I think (not sure about this) that every time we call ``tempName`` we create
  a new temporary file.
- To stop ``TemporaryFile`` from deleting the file:

  ::

    temporaryFile.keep();


.. _`Using logger without Application class`: http://pocoproject.org/forum/viewtopic.php?f=10&t=496&p=1532&hilit=logging#p1532
