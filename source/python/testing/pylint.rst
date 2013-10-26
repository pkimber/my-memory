pylint
******

Links
=====

- `Doug Hellmann, Static Code Analyzers for Python`_
- http://www.logilab.org/project/pylint
- http://www.logilab.org/card/pylint_tutorial
- http://www.logilab.org/card/pylintfeatures#main-messages
- `Ned Batchelder, Blog, pylint`_
- http://pychecker.sourceforge.net/
- `pychecker... is alive again!`_

Install
=======

::

  pip install pylint

Usage
=====

::

  pylint --reports=n --include-ids=y sample.py
  pylint --output-format=colorized --reports=n --include-ids=y sample.py
  pylint --output-format=html --reports=n --include-ids=y sample.py


.. _`Doug Hellmann, Static Code Analyzers for Python`: http://www.doughellmann.com/articles/CompletelyDifferent-2008-03-linters/index.html
.. _`Ned Batchelder, Blog, pylint`: http://nedbatchelder.com/blog/200806/pylint.html
.. _`pychecker... is alive again!`: http://thomas.apestaart.org/log/?p=649

