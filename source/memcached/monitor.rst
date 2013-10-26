Monitor
*******

Simple
======

::

  echo stats | nc 127.0.0.1 11211

damemtop
========

Links
-----

- http://github.com/dormando/damemtop/

Install
-------

- The ``damemtop`` script was already installed on my CentOS system (with
  ``memcached``):

  ::

    /usr/share/doc/memcached-1.4.5/damemtop

- I had to install the following Perl dependencies (although not sure I
  needed to):

  ::

    cpan AnyEvent Term::ReadKey YAML

Configuration
-------------

- Set-up the configuration file:

  ::

    vim /etc/damemtop.yaml

  ... with these contents (put the IP addresses for your own servers in the
  ``servers`` section):

  ::

    delay: 3
    mode: t
    top_mode:
        sort_column: "hostname"
        sort_order: "asc"
        columns:
            - hostname
            - all_version
            - all_fill_rate
            - hit_rate
            - evictions
            - bytes_written
            - "2:get_hits"
    servers:
        - 192.168.10.3:11211
        - 192.168.10.4:11211

  Note: I don't think this configuration will work with server names.  Use the
  IP address.

Usage
-----

  ::

    /usr/share/doc/memcached-1.4.5/damemtop

