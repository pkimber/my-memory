Web Services
************

Links
=====

`Difference between wsdl and asmx?`_

::

  You use an *.asmx file to create an ASP.NET Web Service.  This file contains
  your service implementation and is needed for hosting the service.

  ASP.NET automatically generates the WSDL or "service description" for your
  service by reflecting over the types in your service.  You can see the WSDL
  for your service by browsing to your ASMX file, which should show you a help
  page for your service containing a link to the service description for the
  service.  The WSDL can also generally be reached by appending "?wsdl" to the
  address of the asmx file.

  Take a look at this article for more details:

  http://msdn.microsoft.com/library/default.asp?url=/library/en-us/dnaspnet/html/asp02222001.asp


.. _`Difference between wsdl and asmx?`: http://forums.microsoft.com/MSDN/ShowPost.aspx?PostID=204384&SiteID=1

