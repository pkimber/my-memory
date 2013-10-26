Commons Codec
*************

Decode
------

http://www.onjava.com/pub/a/onjava/2003/07/09/commons.html

Decode a string from Base64:

::

  return org.apache.commons.codec.binary.Base64.decodeBase64(input.getBytes());

Encode
------

::

  final org.apache.commons.codec.binary.Base64 base64 = new org.apache.commons.codec.binary.Base64();
  return new String(base64.encode(input));

Note: This code should replace source which relies on the Sun runtime code:

::

  new BASE64Encoder().encode(input);
  // Causes the following error:
  // BASE64Encoder is not accessible due to restriction on required library rt.jar

...also see base64.patch_

Maven Dependency
----------------

::

  <dependency>
    <artifactId>commons-codec</artifactId>
    <groupId>commons-codec</groupId>
    <version>1.3</version>
  </dependency>

Alternative
-----------

http://migbase64.sourceforge.net/ (I don't know if it is any good).


.. _base64.patch: http://www.phishbouncer.com/trac/attachment/ticket/1/base64.patch

