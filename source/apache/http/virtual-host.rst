Virtual Hosts
*************

Links
=====

- Very useful ticket conversation with a Rackspace person...

  ::

    ../../misc/howto/apache/http/rackspace.txt

Notes
=====

I really don't understand this very well... but it allows you to host more than
one site on a single server.  The IP address for both sites will be the same
and the published DNS entry will have the same IP address for both sites.

Here is a sample virtual host configuration:

::

  #
  # VirtualHost template
  # Note: to use the template, rename it to /etc/apache2/vhost.d/yourvhost.conf.
  # Files must have the .conf suffix to be loaded.
  #
  # See /usr/share/doc/packages/apache2/README.QUICKSTART for further hints
  # about virtual hosts.
  #
  # Almost any Apache directive may go into a VirtualHost container.
  # The first VirtualHost section is used for requests without a known
  # server name.
  #
  NameVirtualHost *

  <VirtualHost *>
      ServerAdmin me@mycompany.com
      ServerName myserver

      # DocumentRoot: The directory out of which you will serve your
      # documents. By default, all requests are taken from this directory, but
      # symbolic links and aliases may be used to point to other locations.
      DocumentRoot /srv/www/vhosts/mvn

      # if not specified, the global error log is used
      ErrorLog /var/log/apache2/mvn-error_log
      CustomLog /var/log/apache2/mvn-access_log combined

      ProxyPass /continuum/ http://localhost:8090/continuum/
      ProxyPassReverse /continuum/ http://localhost:8090/continuum/

      # don't loose time with IP address lookups
      HostnameLookups Off

      # needed for named virtual hosts
      UseCanonicalName Off

      # configures the footer on server-generated documents
      ServerSignature On


      # Optionally, include *.conf files from /etc/apache2/conf.d/
      #
      # For example, to allow execution of PHP scripts:
      #
      # Include /etc/apache2/conf.d/mod_php4.conf
      #
      # or, to include all configuration snippets added by packages:
      # Include /etc/apache2/conf.d/*.conf


      # ScriptAlias: This controls which directories contain server scripts.
      # ScriptAliases are essentially the same as Aliases, except that
      # documents in the realname directory are treated as applications and
      # run by the server when requested rather than as documents sent to the client.
      # The same rules about trailing "/" apply to ScriptAlias directives as to
      # Alias.
      #
      ScriptAlias /cgi-bin/ "/srv/www/vhosts/mvn/cgi-bin/"

      # "/srv/www/cgi-bin" should be changed to whatever your ScriptAliased
      # CGI directory exists, if you have one, and where ScriptAlias points to.
      #
      <Directory "/srv/www/vhosts/mvn/cgi-bin">
      AllowOverride None
      Options +ExecCGI -Includes
      Order allow,deny
      Allow from all
      </Directory>


      # UserDir: The name of the directory that is appended onto a user's home
      # directory if a ~user request is received.
      #
      # To disable it, simply remove userdir from the list of modules in APACHE_MODULES
      # in /etc/sysconfig/apache2.
      #
      <IfModule mod_userdir.c>
      # Note that the name of the user directory ("public_html") cannot simply be
      # changed here, since it is a compile time setting. The apache package
      # would have to be rebuilt. You could work around by deleting
      # /usr/sbin/suexec, but then all scripts from the directories would be
      # executed with the UID of the webserver.
      UserDir public_html
      # The actual configuration of the directory is in
      # /etc/apache2/mod_userdir.conf.
      Include /etc/apache2/mod_userdir.conf
      # You can, however, change the ~ if you find it awkward, by mapping e.g.
      # http://www.example.com/users/karl-heinz/ --> /home/karl-heinz/public_html/
      #AliasMatch ^/users/([a-zA-Z0-9-_.]*)/?(.*) /home/$1/public_html/$2
      </IfModule>


      #
      # This should be changed to whatever you set DocumentRoot to.
      #
      <Directory "/srv/www/vhosts/mvn">

      #
      # Possible values for the Options directive are "None", "All",
      # or any combination of:
      #   Indexes Includes FollowSymLinks SymLinksifOwnerMatch ExecCGI MultiViews
      #
      # Note that "MultiViews" must be named *explicitly* --- "Options All"
      # doesn't give it to you.
      #
      # The Options directive is both complicated and important.  Please see
      # http://httpd.apache.org/docs-2.0/mod/core.html#options
      # for more information.
      #
      Options Indexes FollowSymLinks

      #
      # AllowOverride controls what directives may be placed in .htaccess files.
      # It can be "All", "None", or any combination of the keywords:
      #   Options FileInfo AuthConfig Limit
      #
      AllowOverride None

      #
      # Controls who can get stuff from this server.
      #
      Order allow,deny
      Allow from all

      </Directory>

  </VirtualHost>

  <VirtualHost *>
      ServerAdmin me@mycompany.com
      ServerName myserver

      # DocumentRoot: The directory out of which you will serve your
      # documents. By default, all requests are taken from this directory, but
      # symbolic links and aliases may be used to point to other locations.
      DocumentRoot /srv/www/vhosts/myserver

      # if not specified, the global error log is used
      #ErrorLog /var/log/apache2/mvn-error_log
      #CustomLog /var/log/apache2/mvn-access_log combined

      #ProxyPass /continuum/ http://localhost:8090/continuum/
      #ProxyPassReverse /continuum/ http://localhost:8090/continuum/

      # don't loose time with IP address lookups
      #HostnameLookups Off

      # needed for named virtual hosts
      #UseCanonicalName Off

      # configures the footer on server-generated documents
      #ServerSignature On


      # Optionally, include *.conf files from /etc/apache2/conf.d/
      #
      # For example, to allow execution of PHP scripts:
      #
      # Include /etc/apache2/conf.d/mod_php4.conf
      #
      # or, to include all configuration snippets added by packages:
      # Include /etc/apache2/conf.d/*.conf


      # ScriptAlias: This controls which directories contain server scripts.
      # ScriptAliases are essentially the same as Aliases, except that
      # documents in the realname directory are treated as applications and
      # run by the server when requested rather than as documents sent to the client.
      # The same rules about trailing "/" apply to ScriptAlias directives as to
      # Alias.
      #
      #ScriptAlias /cgi-bin/ "/srv/www/vhosts/mvn/cgi-bin/"

      # "/srv/www/cgi-bin" should be changed to whatever your ScriptAliased
      # CGI directory exists, if you have one, and where ScriptAlias points to.
      #
      #<Directory "/srv/www/vhosts/mvn/cgi-bin">
  #   AllowOverride None
  #   Options +ExecCGI -Includes
  #   Order allow,deny
  #   Allow from all
   #   </Directory>


      # UserDir: The name of the directory that is appended onto a user's home
      # directory if a ~user request is received.
      #
      # To disable it, simply remove userdir from the list of modules in APACHE_MODULES
      # in /etc/sysconfig/apache2.
      #
    #  <IfModule mod_userdir.c>
      # Note that the name of the user directory ("public_html") cannot simply be
      # changed here, since it is a compile time setting. The apache package
      # would have to be rebuilt. You could work around by deleting
      # /usr/sbin/suexec, but then all scripts from the directories would be
      # executed with the UID of the webserver.
      UserDir public_html
      # The actual configuration of the directory is in
      # /etc/apache2/mod_userdir.conf.
      Include /etc/apache2/mod_userdir.conf
      # You can, however, change the ~ if you find it awkward, by mapping e.g.
      # http://www.example.com/users/karl-heinz/ --> /home/karl-heinz/public_html/
      #AliasMatch ^/users/([a-zA-Z0-9-_.]*)/?(.*) /home/$1/public_html/$2
     # </IfModule>


      #
      # This should be changed to whatever you set DocumentRoot to.
      #
      #<Directory "/srv/www/vhosts/mvn">

      #
      # Possible values for the Options directive are "None", "All",
      # or any combination of:
      #   Indexes Includes FollowSymLinks SymLinksifOwnerMatch ExecCGI MultiViews
      #
      # Note that "MultiViews" must be named *explicitly* --- "Options All"
      # doesn't give it to you.
      #
      # The Options directive is both complicated and important.  Please see
      # http://httpd.apache.org/docs-2.0/mod/core.html#options
      # for more information.
      #
      #Options Indexes FollowSymLinks

      #
      # AllowOverride controls what directives may be placed in .htaccess files.
      # It can be "All", "None", or any combination of the keywords:
      #   Options FileInfo AuthConfig Limit
      #
      #AllowOverride None

      #
      # Controls who can get stuff from this server.
      #
      #Order allow,deny
      #Allow from all

     # </Directory>

  </VirtualHost>

On SuSE Linux this file is in the folder:

::

  /etc/apache2/vhosts.d/

To simulate the DNS entry we can edit the hosts file
(:doc:`../../microsoft/networking`) on the workstation:

::

  10.10.10.182    myserver

This line specifies the IP address and name of the virtual host.



.. _`Very useful ticket conversation with a Rackspace person...`: ../../misc/howto/apache/http/rackspace.txt

