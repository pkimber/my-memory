Startup
*******

`systemd-analyze - Analyze system boot-up performance`_

`Really slow boot on 16.04_`::

  systemd-analyze blame

Prints a list of all running units, ordered by the time they took to initialize.
This information may be used to optimize boot-up times.

.. note:: The output might be misleading as the initialization of one service
          might be slow simply because it waits for the initialization of
          another service to complete.


.. _`Really slow boot on 16.04`: https://askubuntu.com/questions/760694/really-slow-boot-on-16-04
.. _`systemd-analyze - Analyze system boot-up performance`: https://www.freedesktop.org/software/systemd/man/systemd-analyze.html
