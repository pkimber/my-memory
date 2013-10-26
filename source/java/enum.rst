enum
****

Links
=====

- http://java.sun.com/j2se/1.5.0/docs/guide/language/enums.html
- :doc:`learning/wjb-275a`, *Course Notes, Enumerated Types*.

Iterate
=======

::

  for (Season season : Season.values()) {

Sample
======

::

  enum Season { WINTER, SPRING, SUMMER, FALL }

::

  enum PartType {

      HTML_TEXT(1), IMAGE(2), MULTI_PART(3), NESTED_MESSAGE(4), PLAIN_TEXT(5),
              UNKNOWN(6), UNKNOWN_TEXT(7);

      private final int databaseId;

      private PartType(final int value) {
          databaseId = value;
      }

      public int getDatabaseId() {
          return databaseId;
      }
  };

