Sample
******

.. note:: I really didn't make much progress with puppet (after 2-3 days).
          Found bugs with documentation, blogs and modules.  Have started using
          Salt and made more progress in 2-3 hours already.

Server
======

::

  # upgrade all packages
  root@mymaster:~# export DEBIAN_FRONTEND=noninteractive
  root@mymaster:~# apt-get update
  root@mymaster:~# apt-get -y upgrade
  root@mymaster:~# export DEBIAN_FRONTEND=dialog

  root@mymaster:~# apt-get -y install puppetmaster
  root@mymaster:~# service puppetmaster stop

  # remove the old certificate
  root@mymaster:~# rm -rf /var/lib/puppet/ssl

  root@mymaster:~# vim /etc/puppet/puppet.conf
  # Add the following
  [master]
  dns_alt_names = puppet, mymaster.com

  # Certificate is automatically generated when you start PuppetMaster
  root@mymaster:~# service puppetmaster start
  root@mymaster:~# ll /var/lib/puppet/ssl/certs/

Workstation
===========

::

  # upgrade all packages
  root@mycompany:~# export DEBIAN_FRONTEND=noninteractive
  root@mycompany:~# apt-get update
  root@mycompany:~# apt-get -y upgrade
  root@mycompany:~# export DEBIAN_FRONTEND=dialog

  # Check we can communicate with the server (puppetmaster)
  root@mycompany:~# ping -c 1 mymaster.com

  # Check puppet config
  root@mycompany:~# vim /etc/puppet/puppet.conf
  # Make sure the agent is set to the correct server:
  # [agent]
  # server = mymaster.com

  root@mycompany:~# vim /etc/default/puppet
  # Make sure puppet will start:
  # START=yes

  root@mycompany:~# service puppet stop
  root@mycompany:~# rm -rf /var/lib/puppet/ssl
  root@mycompany:~# service puppet start

Server
======

::

  root@mymaster:~# puppet cert --list
  root@mymaster:~# puppet cert --sign mycompany

Install nginx (version 1)

::

  root@mymaster:~# cd /etc/puppet/modules/
  # Might not need the following any more
  # root@mymaster:/etc/puppet/modules# git clone git://github.com/puppetlabs/puppetlabs-stdlib.git stdlib
  root@mymaster:/etc/puppet/modules# git clone git://github.com/BenoitCattie/puppet-nginx.git nginx

  root@mymaster:~# vim /etc/puppet/manifests/site.pp
  # node default {
  #     $nginx_user = 'www-data'
  #     $nginx_worker_processes = 2
  #     $nginx_worker_connections = 1024
  #     include nginx
  # }

Server
======

  Install nginx (version 2)

  Copied from `Module of the Week: BenoitCattie/nginx`_

::

  root@mymaster:~# cd /etc/puppet/modules/
  root@mymaster:/etc/puppet/modules# git clone git://github.com/BenoitCattie/puppet-nginx.git nginx

  root@mymaster:~# vim /etc/puppet/manifests/site.pp
  # node 'agent.puppetlabs.com' {
  #     $nginx_user = 'www-data'
  #     $nginx_worker_processes = 2
  #     $nginx_worker_connections = 1024
  #     include nginx
  # }

Workstation
===========

::

  root@mycompany:~# puppet agent -t


.. _`Module of the Week: BenoitCattie/nginx`: http://puppetlabs.com/blog/module-of-the-week-benoitcattienginx-basic-nginx-configuration/
