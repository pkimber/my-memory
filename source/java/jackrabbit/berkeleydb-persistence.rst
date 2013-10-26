BerkeleyDB Persistence
**********************

This is so easy it is hard to believe.  The ``readme.txt`` file says:

"Just use org.apache.jackrabbit.core.state.bdb.BerkeleyDBPersistenceManager
as persistence managers in your repository.xml configuration file"

So I changed the line in ``repository.xml`` from:

::

  <PersistenceManager class="org.apache.jackrabbit.core.state.xml.XMLPersistenceManager" />

to:

::

  <PersistenceManager class="org.apache.jackrabbit.core.state.bdb.BerkeleyDBPersistenceManager" />

In my project added ``jackrabbit-bdb`` to "Java Build Path, Projects".

Deleted the old repository and everything worked perfectly.

