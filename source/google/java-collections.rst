Java - Collections
******************

Links
=====

- google-collections_ - Google Collections Library
- `My Top List of Java Tools`_

Sample
======

::

  // create an ArrayList with three arguments
  List<String> list = Lists.newArrayList("foo", "bar", "baz");

  // notice that there is no generics or class cast,
  // and still this line does not generate a warning.
  Set<String> s = Sets.newConcurrentHashSet();

  // intersect and union are basic features of a Set, if you ask me
  Set<String> s = Sets.intersect(s1, s2);

  // Example  of multiple values in a Map
  ListMultimap<String, Validator> validators = new ArrayListMultimap<String, Validator>();
  validators.put("save", new RequiredValidator());
  validators.put("save", new StringValidator());
  validators.put("delete", new NumberValidator());

  validators.get("save"); // { RequiredValidator, StringValidator }
  validators.get("foo");  // empty List (not null)
  validators.values();    // { RequiredValidator, StringValidator, NumberValidator }



.. _google-collections: http://code.google.com/p/google-collections/
.. _`My Top List of Java Tools`: http://java.dzone.com/articles/my-top-list-java-tools

