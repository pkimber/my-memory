Getting Started
***************

Links
=====

`Windows, Installation from a complete bundle`_

Download
========

- Download the *Windows Bundle* of RabbitMQ from
  http://www.rabbitmq.com/download.html.
- I downloaded ``complete-rabbitmq-bundle-1.6.0.zip``.

Install
=======

Open the archive and run the Erlang installer (``otp_win32_R11B-5.exe`` ).  I
installed to:

::

  C:\tools\erl5.5.5\

Open the archive and extract the ``rabbitmq-server-windows-1.6.0.zip``.  I
extracted to:

::

  C:\tools\rabbitmq_server-1.6.0\

Configuration
=============

Set the ``ERLANG_HOME`` environment variable to point to your Erlang
installation:

::

  SET ERLANG_HOME=C:\tools\erl5.5.5\

Run
===

To run the RabbitMQ server as an application:

Change into the ``sbin`` folder:

::

  c:
  cd \tools\rabbitmq_server-1.6.0\sbin\

Start the server:

::

  rabbitmq-server.bat

You should see a success message, ``broker running``...

Test
====

To test the queue, you can use :doc:`test-python`.


.. _`Windows, Installation from a complete bundle`: http://www.rabbitmq.com/install.html#install-windows-bundle
