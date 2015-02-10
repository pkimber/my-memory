dispatch-conf
*************

To install dispatch-conf (a much better alternative to etc-update)

First edit the configuration file.  I changed diff to colordiff and use-rcs to
yes:

::

  gvim /etc/dispatch-conf.conf

::

  use-rcs=yes

Install rcs used for version control of the config files:

::

  emerge -av rcs

Make the folder to store the changes:

::

  mkdir /etc/config-archive

Install colordiff for making changes easier to see:

::

  emerge -av colordiff

Run the program (in place of etc-update)

::

  dispatch-conf

