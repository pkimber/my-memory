Install
*******

Following install instructions for OERPScenario, the testing framework for
OpenERP based on the Ruby Cucumber test framework:

- Install the packages:

  ::

    sudo apt-get install ruby irb ri rdoc rubygems
    sudo gem install cucumber -v0.6.3
    sudo gem install rspec
    sudo gem install parseconfig
    sudo gem install ooor --source http://gemcutter.org
    sudo apt-get install libopenssl-ruby
    sudo gem install rake
    sudo gem install htmlentities
    sudo gem install prawn --version 0.6.3
    sudo gem install prawn-format --version 0.2.3

- Add the following to your ``~/.bashrc`` file:

  ::

    export PATH=$PATH:/var/lib/gems/1.8/bin

- Start a new terminal..!
