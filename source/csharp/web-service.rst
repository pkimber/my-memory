Web Service
***********

Note: Don't try to build a C# web service without using the Visual Studio 2005
IDE... It is not easy to change the project type...

Getting Started
===============

- To create a web service project:

  Visual Studio 2005, *File*, *New*, *Project*, *Visual C#*,
  *ASP.NET Web Service Application*...

  This will create a web service project with a sample web service.  To test the
  web service, right click on the ``asmx`` file and choose *View in Browser*.

- To create your own web service:

  Right click on the project, *Add*, *New Item*, *Web Service*.

Sending XML data in POST request
================================

`How to create a POST request and send XML data`_.

::

  string xml = "SomeXML Data";
  string url = @"http://www.vikramlakhotia.com/HomePage.aspx";
  WebRequest request = WebRequest.Create(url);
  request.Method = "Post";
  request.ContentType = "text/xml";
  //The encoding might have to be chaged based on requirement
  UTF8Encoding encoder = new UTF8Encoding();
  byte[] data = encoder.GetBytes(xml); //postbody is plain string of xml
  request.ContentLength = data.Length;
  Stream reqStream = request.GetRequestStream();
  reqStream.Write(data, 0, data.Length);
  reqStream.Close();
  System.Net.WebResponse response = request.GetResponse();
  System.IO.StreamReader reader = new System.IO.StreamReader(response.GetResponseStream());
  string str = reader.ReadToEnd();

...that is all you need to do to send XML in a post request....

Security
========

WSDL
----

How to hide WSDL?, from blog entry by `Kishore Gorjala`_

::

  ../../misc/howto/csharp/how-to-hide-wsdl.html


.. _`How to create a POST request and send XML data`: http://www.vikramlakhotia.com/Sending_XML_data_in_POST_request.aspx
.. _`Kishore Gorjala`: http://csharpaspnet.blogspot.com/2007/12/how-to-hide-wsdl.html

