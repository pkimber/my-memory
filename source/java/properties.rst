Properties
**********

Links
=====

Alternatives
------------

- `YAML beans`_
- `Sir, What is Your Preference?`_

Reading and Writing
===================

http://javaalmanac.com/egs/java.util/Props.html

e365. Reading and Writing a Properties File

::

  // Read properties file.
  Properties properties = new Properties();
  try {
      properties.load(new FileInputStream("filename.properties"));
  } catch (IOException e) {
  }

  // Write properties file.
  try {
      properties.store(new FileOutputStream("filename.properties"), null);
  } catch (IOException e) {
  }

**Note**

- A properties object can be treated like a ``Map`` (as far as reading the
  contents is concerned).  See collection notes, :doc:`collection`

  Here is an example of the contents of a properties file:

  ::

    # a comment
    ! a comment

    a = a string
    b = a string with escape sequences \t \n \r \\ \" \' \ (space) \u0123
    c = a string with a continuation line \
        continuation line
    d.e.f = another string


.. _`YAML beans`: http://unserializableone.blogspot.com/2007/06/alternative-to-properties-file-yaml.html
.. _`Sir, What is Your Preference?`: http://java.sun.com/developer/technicalArticles/releases/preferences/

