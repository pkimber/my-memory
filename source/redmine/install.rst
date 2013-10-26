Install
*******

Links
=====

- http://www.redmine.org/projects/redmine/wiki/RedmineInstall
- http://www.redmine.org/projects/redmine/wiki/HowTo_Install_Redmine_in_Ubuntu
- http://www.redmine.org/projects/redmine/wiki/HowTo_Install_Redmine_in_Ubuntu#Configuring-the-Passenger-Apache-module
- Google Apps (GMail)

  - http://redmineblog.com/articles/setup-redmine-to-send-email-using-gmail/
  - http://www.redmine.org/issues/5814

Sample
======

We had a real struggle installing Redmine:

- Ubuntu 10.4 LTS
- Apache with ``passenger``.

Here are some of the commands we had to run:

::

  ruby --version
  apt-cache showpkg ruby
  cat /proc/version
  cat /etc/issue
  apt-cache showpkg redmine
  apt-cache showpkg ruby
  apt-get install ruby
  sudo apt-get install ruby
  ruby --version
  gem install rails -v=2.3.5
  sudo apt-get install rubygems
  gem install rails -v=2.3.5
  gem install rack -v=1.0.1
  apt-cache showpkg redmine
  sudo gem install rack -v=1.0.1
  man gem
  gem -v
  gem install rack -v=1.0.1
  sudo gem install rack -v=1.0.1
  rm -r ~/.gem/
  sudo gem install mysql
  locate mysql_config
  which mysql
  cd /
  find . -name my.cnf
  sudo find . -name my.cnf
  sudo gem install mysql --with-mysql-config=/etc/mysql/my.cnf
  sudo gem install mysql - -with-mysql-config=/etc/mysql/my.cnf
  sudo apt-get install ruby-dev
  sudo gem install mysql
  find . -name mkmf.log
  sudo find . -name mkmf.log
  vim /var/lib/gems/1.8/gems/mysql-2.8.1/ext/mysql_api/mkmf.log
  sudo apt-get install  libmysqlclient16-dev
  sudo apt-get install  libmysqlclient-dev
  sudo gem install mysql
  cd ~
  mkdir src
  cd src
  cd ~
  mkdir src
  cd src
  svn co svn://rubyforge.org/var/svn/redmine/branches/1.1-stable redmine-1.1
  sudo apt-get install subversion
  svn co svn://rubyforge.org/var/svn/redmine/branches/1.1-stable redmine-1.1
  svn co http://redmine.rubyforge.org/svn/branches/1.1-stable redmine-1.1
  cd redmine-1.1/
  ll config/
  cd /usr/local/
  ll
  cd bin
  ll
  mv ~/src/redmine-1.1/ .
  sudo mv ~/src/redmine-1.1/ .
  ll
  cd redmine-1.1/
  cp config/database.yml.example config/database.yml
  vim config/database.yml
  rake generate_session_store
  sudo apt-get install rake
  rake generate_session_store
  sudo gem install -v=0.4.2 i18n
  ll generate_session_store
  rake generate_session_store
  cat config/environment.rb 
  cat config/environment.rb | grep rails
  sudo gem install rails -v=2.3.5
  rake generate_session_store
  RAILS_ENV=production rake db:migrate
  sudo apt-get install libopenssl-ruby1.8
  RAILS_ENV=production rake db:migrate
  RAILS_ENV=production rake redmine:load_default_data
  cd ..
  ll
  adduser redmine
  sudo adduser redmine
  g
  cat /etc/passwd
  vim /etc/passwd
  vim /etc/group
  sudo passwd redmine
  ll
  chown -R redmine:redmine redmine-1.1/
  sudo chown -R redmine:redmine redmine-1.1/
  ll
  cd redmine-1.1/
  ll
  ll public/
  ll public/plugin_assets/
  sudo chmod -R 755 files log tmp public/plugin_assets
  ll
  sudo -u redmine cp config/additional_environment.rb.example config/additional_environment.rb
  sudo -u redmine vim config/additional_environment.rb
  sudo -u redmine ruby script/server webrick -e production
  sudo -u redmine cp config/email.yml.example config/email.yml 
  sudo -u redmine vim config/email.yml
  ruby script/plugin install git://github.com/collectiveidea/action_mailer_optional_tls.git
  sudo -u redmine ruby script/server webrick -e production

  sudo gem install passenger
  cd /var/lib/gems/1.8/gems/passenger-3.0.2/
  ll
  sudo bin/passenger-install-apache2-module

  sudo apt-get install build-essential
  sudo apt-get install libcurl4-openssl-dev
  sudo apt-get install libssl-dev
  sudo apt-get install zlib1g-dev
  sudo apt-get install apache2-prefork-dev
  sudo apt-get install libapr1-dev
  sudo apt-get install libaprutil1-dev
  sudo vim /etc/apache2/mods-available/passenger.load
  sudo vim /etc/apache2/mods-available/passenger.conf
  sudo a2enmod passenger
  sudo vim /etc/apache2/mods-available/passenger.conf
  sudo vim /etc/apache2/mods-available/passenger.load 
  /etc/init.d/apache2 restart
  cd /etc/apache2/
  ll
  ll mods-enabled/
  cd ..
  ll
  cd apache2/
  ll
  ll sites-enabled/
  ll sites-available/
  vim sites-available/default
  vim sites-available/redmine
  sudo vim sites-available/redmine
  ll /usr/local/bin/redmine-1.1/public/
  sudo vim sites-available/redmine
  ll
  ll sites-enabled/
  sudo a2ensite redmine
  sudo /etc/init.d/apache2 reload
  sudo vim sites-available/redmine
  sudo /etc/init.d/apache2 reload
  sudo /etc/init.d/apache2 stop
  sudo /etc/init.d/apache2 start
  vim apache2.conf 
  sudo vim sites-available/redmine
  sudo vim sites-available/default
  sudo vim sites-available/redmine
  sudo /etc/init.d/apache2 restart
  vim /etc/nginx/nginx.conf 
  sudo vim sites-available/redmine
  sudo /etc/init.d/apache2 restart
  vim /var/log/apache2/
  sudo vim /var/log/apache2/
  cat sites-enabled/redmine 
  vim /var/log/apache2/
  sudo vim /var/log/apache2/
  ll
  ll sites-enabled/
  vim httpd.conf 
  vim apache2.conf 
  ll
  vim ports.conf 
  vim apache2.conf 
  sudo vim sites-enabled/000-default 
  sudo vim sites-available/redmine 
  history
  sudo a2dissite 000-default 
  sudo /etc/init.d/apache2 restart
  sudo tail /var/log/apache2/error.log
  ls -lrt /var/log/apache2/
  sudo ls -lrt /var/log/apache2/
  sudo tail /var/log/apache2/redmine_error
  ll
  ll mods-available/
  ll mods-available/ | grep write
  ll mods-enabled/
  history | grep passeng
  sudo a2enmod rewrite
  sudo /etc/init.d/apache2 restart

