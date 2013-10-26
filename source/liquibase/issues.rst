Issues
******

Validation Failed
=================

I got this error, but was pretty sure everything was OK:

::

  liquibase.exception.ValidationFailedException: Validation Failed:
       1 change sets check sum
            changelog-2009-10-20.xml::4::patrick::(MD5Sum: ae97d228bbbc5e5d25e311bf64dbeb)

Open the ``DATABASECHANGELOG`` table, find the row representing this
changeset and copy the ``MD5Sum`` from the error message into the
``MD5SUM`` field in.

