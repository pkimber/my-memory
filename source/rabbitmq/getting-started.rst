Getting Started
***************

.. highlight:: bash

Links
=====

`Windows, Installation from a complete bundle`_

Linux
=====

.. note:: I had some issues following the `Installing on Debian / Ubuntu`_
          instructions, so just installed the standard versions on Ubuntu
          16.04.

::

  sudo apt-get install rabbitmq-server

Diagnostics::

  systemctl status rabbitmq-server.service
  journalctl -xe
  rabbitmqctl status

To list queues::

  rabbitmqctl list_queues
  rabbitmqctl list_queues name messages messages_ready messages_unacknowledged

Windows
=======

Download and run the Erland installer, ``otp_win64_18.3.exe``.  It installs to::

  C:\Program Files\erl7.3\

Download and install the RabbitMQ Windows installer,
``rabbitmq-server-3.6.1.exe`` from https://www.rabbitmq.com/install-windows.html
It installs to::

  C:\Program Files\RabbitMQ Server\

The RabbitMQ service starts automatically. You can stop/reinstall/start the
RabbitMQ service from the Start Menu.

Test
====

To test the queue, you can use :doc:`test-python`.


.. _`Windows, Installation from a complete bundle`: http://www.rabbitmq.com/install.html#install-windows-bundle
.. _`Installing on Debian / Ubuntu`: https://www.rabbitmq.com/install-debian.html
