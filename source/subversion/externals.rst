Externals (are excellent)
*************************

See: *Subversion Book, Chapter 7. Advanced Topics, Externals Definitions*

http://svnbook.red-bean.com/en/1.0/ch07s03.html

To automatically checkout a project as a sub-folder of an existing project:

Right click on the root folder of your project e.g.

::

  C:\projects\lucene-stuff\

Choose *Properties* and click on the *Subversion* tab.

Add a property ``svn:externals``.  The property should be a folder name
followed by the url of the sub-project e.g.

::

  subfolder http://myserver/svn/home/patrick/sub-project/

In this example, a Subversion "update" command will checkout the contents of
``sub-project`` to

::

  C:\projects\lucene-stuff\subfolder\

