SQLAlchemy
**********

.. highlight:: python

Links
=====

- http://www.sqlalchemy.org/
- `Elixir is a declarative layer on top of the SQLAlchemy library`_.
- `Object Relational Tutorial`_
- SqlSoup_ provides a convenient way to access database tables without having
  to declare table or mapper classes ahead of time.

Install
=======

::

  easy_install SQLAlchemy

Verify
======

::

  >>> import sqlalchemy
  >>> sqlalchemy.__version__
  0.4.0

Connection
==========

In Memory (sqlite)
------------------

::

  >>> from sqlalchemy import create_engine
  >>> engine = create_engine('sqlite:///:memory:', echo=True)

Create Table
============

::

  from sqlalchemy.ext.declarative import declarative_base

  Base = declarative_base()

  from sqlalchemy import Column, Integer, String

  class User(Base):
      __tablename__ = 'users'
      id = Column(Integer, primary_key=True)
      name = Column(String)
      fullname = Column(String)
      password = Column(String)

      def __init__(self, name, fullname, password):
          self.name = name
          self.fullname = fullname
          self.password = password

      def __repr__(self):
          return "<User('%s','%s', '%s')>" % (self.name, self.fullname, self.password)

  Base.metadata.create_all(engine)

Note: ``create_all`` will check for the presence of a table first before
creating, so it's safe to call multiple times.

- We want to save an object, so lets create an instance of our class:

  ::

    >>> ed_user = User('ed', 'Ed Jones', 'edspassword')
    >>> ed_user.name
    'ed'
    >>> ed_user.password
    'edspassword'
    >>> str(ed_user.id)
    'None'

Session
=======

::

  >>> from sqlalchemy.orm import sessionmaker
  >>> Session = sessionmaker(bind=engine)

Note: Just create a single ``Session`` object for your application.

Whenever you need to have a conversation with the database, you instantiate a
``Session``:

::

  session = Session()

Saving Objects
==============

::

  session.add(ed_user)
  session.commit()

If we look at Ed's id attribute, which earlier was None, it now has a value:

::

  >>> ed_user.id
  1

Query
=====

::

  for instance in session.query(User).order_by(User.id):
      print instance.name

::

  jack = session.query(User).get(5)


.. _`Elixir is a declarative layer on top of the SQLAlchemy library`: http://elixir.ematia.de/trac/wiki
.. _`Object Relational Tutorial`: http://docs.sqlalchemy.org/en/rel_0_7/orm/tutorial.html
.. _SqlSoup: http://www.sqlalchemy.org/trac/wiki/SqlSoup
