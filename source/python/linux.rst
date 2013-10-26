linux
*****

Debian
======

- `debian python2.6 as default?`_

If alternatives are already set up:

::

  update-alternatives --config python

...then choose from the list that's presented.

If they're not set up, then do this:

- If there is a symlink already set up, save it:

  ::

    sudo mv /usr/bin/python /usr/bin/pythonSAVE

- Create the alternatives

  ::

    sudo update-alternatives --install python2.4 python /usr/bin/python2.4 10
    sudo update-alternatives --install python2.5 python /usr/bin/python2.5 20
    sudo update-alternatives --install python2.6 python /usr/bin/python2.6 30

  Note: The option with the highest value for the last parameter will be the
  default.

- Create a new symlink

  ::

    sudo ln -s /etc/alternatives/python /usr/bin/python

- Choose the one you want to use:

  ::

    sudo update-alternatives --config python

Script
======

To create a nice python script in linux:

- Create a folder for the scripts:

  ::

    mkdir ~/bin/

- Add the bin folder to the ``PATH``
  (see :doc:`../linux/bash/environment-variables`).
- At the top of the script:

  ::

    #!/usr/bin/env python

- Make the script executable:

  ::

    chmod +x myfile.py

- Should be able to run the script by just typing it's name
  e.g. ``myfile.py``.

  Note: This doesn't seem to work very well if you are using a virtual
  environment.



.. _`debian python2.6 as default?`: http://serverfault.com/questions/64624/debian-python2-6-as-default/64637#64637

