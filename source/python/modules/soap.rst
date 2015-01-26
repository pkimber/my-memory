SOAP
****

My search for a SOAP library which:

- Supports python 3
- SOAP 1.2
- Is a server (not just a client)

`What SOAP client libraries exist for Python`_

Libraries
=========

osa
---

osa - A small python library to **consume** SOAP services:

https://bitbucket.org/sboz/osa/overview::

  pip install hg+ssh://hg@bitbucket.org/sboz/osa
  cl = osa.Client("http://phone.activ8rlives.com/spservice.asmx?wsdl")
  cl.types
  cl.service

pysimplesoap
------------

Python simple and lightweight SOAP library for client and server webservices
interfaces.

- https://code.google.com/p/pysimplesoap/
- https://github.com/pysimplesoap/pysimplesoap
- https://code.google.com/p/pysimplesoap/wiki/Django

spyne
-----

http://spyne.io/:

  Looks like the SOAP stuff supports python 3

  But it doesn't support SOAP 1.2 (which I think is used by the API):
  http://spyne.io/docs/2.11/faq.html#does-spyne-support-the-soap-1-2-standard

  This pull request did some work on SOAP 1.2:
  https://github.com/arskom/spyne/pull/386

.. code-block:: xml

  <wsdl:definitions
    xmlns:s="http://www.w3.org/2001/XMLSchema"
    xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
    xmlns:http="http://schemas.xmlsoap.org/wsdl/http/"
    xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
    xmlns:tns="http://aseptika.co.uk"
    xmlns:s1="http://aseptika.co.uk/AbstractTypes"
    xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
    xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/"
    xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/"
    targetNamespace="http://aseptika.co.uk"
    xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">

suds
----

One of the answers to the `Stack Overflow SOAP 1.2 python client`_ question
suggests using ``suds`` with a gist to support SOAP 1.2.

https://bitbucket.org/jurko/suds/overview is a fork of the original ``suds``
project for python 3, but I don't know if you can make a SOAP server.  It is
active though!



.. _`What SOAP client libraries exist for Python`: http://stackoverflow.com/questions/206154/what-soap-client-libraries-exist-for-python-and-where-is-the-documentation-for
.. _`Stack Overflow SOAP 1.2 python client`: http://stackoverflow.com/questions/2370573/soap-1-2-python-client
