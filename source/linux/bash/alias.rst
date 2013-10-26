alias
*****

Configuration
=============

- Uncomment the following from ``~/.bashrc``:

  ::

    if [ -f ~/.bash_aliases ]; then
        . ~/.bash_aliases
    fi

- Create a ``~/.bash_aliases`` file and set-up your aliases:

  ::

    alias vesp='source ~/repo/ve/sphinx/bin/activate'
