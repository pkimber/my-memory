Getting Started
***************

.. highlight:: bash

Links
=====

`Windows, Installation from a complete bundle`_

Linux
=====

From `Installing on Debian / Ubuntu`_

To add the APT repository to your ``/etc/apt/sources.list.d``::

  echo 'deb http://www.rabbitmq.com/debian/ testing main' | sudo tee /etc/apt/sources.list.d/rabbitmq.list

.. note:: The release is described as ``testing`` to emphasise that they
          release frequently.

To avoid warnings about unsigned packages, add the public key to your trusted
key list using apt-key(8)::

  wget -O- https://www.rabbitmq.com/rabbitmq-signing-key-public.asc | sudo apt-key add -

Update the package list and install::

  sudo apt-get update
  sudo apt-get install rabbitmq-server

Diagnostics::

  systemctl status rabbitmq-server.service
  journalctl -xe
  rabbitmqctl status

Windows
=======

Download the *Windows Bundle* of RabbitMQ from
http://www.rabbitmq.com/download.html

I downloaded ``complete-rabbitmq-bundle-1.6.0.zip``.

Open the archive and run the Erlang installer (``otp_win32_R11B-5.exe`` ).  I
installed to::

  C:\tools\erl5.5.5\

Open the archive and extract the ``rabbitmq-server-windows-1.6.0.zip``.  I
extracted to::

  C:\tools\rabbitmq_server-1.6.0\

Set the ``ERLANG_HOME`` environment variable to point to your Erlang
installation::

  SET ERLANG_HOME=C:\tools\erl5.5.5\

To run the RabbitMQ server as an application, change into the ``sbin`` folder::

  c:
  cd \tools\rabbitmq_server-1.6.0\sbin\

Start the server::

  rabbitmq-server.bat

You should see a success message, ``broker running``...

Test
====

To test the queue, you can use :doc:`test-python`.


.. _`Windows, Installation from a complete bundle`: http://www.rabbitmq.com/install.html#install-windows-bundle
.. _`Installing on Debian / Ubuntu`: https://www.rabbitmq.com/install-debian.html
