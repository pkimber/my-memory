Getting Started
***************

Maven
=====

::

  <dependency>
    <groupId>net.sf.ehcache</groupId>
    <artifactId>ehcache</artifactId>
    <version>1.6.0-beta1</version>
  </dependency>

Sample
======

Configuration
-------------

Add ``ehcache.xml``...

::

  ../../../misc/howto/java/ehcache/ehcache.xml

...to the ``classpath``.  Look at the comments in the file for more
configuration information.

Create
------

::

  private final Cache cache;

  final CacheManager cacheManager = CacheManager.create();
  cacheManager.addCache(CACHE_NAME);
  cache = cacheManager.getCache(CACHE_NAME);

Add
---

::

  cache.put(new Element(fileName, path));

Get
---

::

  if (cache.get(fileName) == null)

::

  final Element element = getCache().get(fileName);
  if (element == null) {
      return null;
  } else {
      final Serializable result = element.getValue();
      return result.toString();
  }

