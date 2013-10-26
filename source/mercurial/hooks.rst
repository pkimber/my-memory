Hooks
*****

Links
=====

- `Handling repository events with hooks`_
- `Auto-Generating Documentation Using Mercurial, ReST, and Sphinx`_

Sample
======

To re-build Sphinx documentation just before committing your code:

- Create a script to rebuild the documentation e.g:

  ::

    #!/bin/bash
    source ~/repo/env/env-sphinx/bin/activate
    cd $HOME/etc/my-memory/
    make html

- Make the script executable:

  ::

    chmod +x ~/bin/sphinxify_docs.sh

- Edit ``./.hg/hgrc`` and add a path to your script:

  ::

    [hooks]
    precommit.sphinxify = ~/bin/sphinxify_docs.sh

- The script should run just before your changes are committed.


.. _`Handling repository events with hooks`: http://hgbook.red-bean.com/read/handling-repository-events-with-hooks.html
.. _`Auto-Generating Documentation Using Mercurial, ReST, and Sphinx`: http://www.codekoala.com/blog/2010/auto-generating-documentation-using-mercurial-rest/

