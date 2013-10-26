mod_mono
********

Basically got this working by following the instructions to "Getting mod-mono
working with Apache2" from:

http://forums.gentoo.org/viewtopic-t-321552-highlight-modmono.html

So in summary:

::

  emerge -av mod_mono

To enable mod_mono, you need to edit:

::

  /etc/conf.d/apache2

and add

::

  -D MONO

to ``APACHE2_OPTS``.


From the svn repository (see below) copy the files:

::

  /etc/apache2/conf/modules.d/70_mod_mono.conf
  /etc/init.d/mono-server

Need to make mono-server executable:

::

  chmod a+x /etc/init.d/mono-server

Start apache and mono up by doing:

::

  /etc/init.d/apache2 start
  /etc/init.d/mono-server start

Save the following as ``test.aspx`` and place it in:

::

  /var/www/localhost/htdocs/aspnet

::

  <%@ Page Language="C#" %>
  <html>
  <head>
  <title>My First ASP.NET Page</title>
  <script runat="server">
   protected void Page_Load(Object Source, EventArgs E)
   {
     TimeLabel.Text = DateTime.Now.ToString();
   }
  </script>
  </head>
  <body>

   <p>Hello there!</p>

    <p>The time is now: <asp:label runat="server" id="TimeLabel" /></p>

  </body>
  </html>

Point the browser to http://localhost/aspnet/test.aspx and if the output is
like the following:

::

  Hello there!
  The time is now: 03/04/2005 11:14:15

then ASP.NET is working on mod_mono.

Things to note:

::

  emerge -av mod_mono

tells you:

::

  * Configuration file installed as
  *     /etc/apache2/modules.d/70_mod_mono.conf
  BUT 70_mod_mono.conf must be in the folder:
  /etc/apache2/conf/modules.d/70_mod_mono.conf

The configuration changes to get this working can be found in the *C1*
subversion repository:

https://212.106.106.29/svn/config/trunk/patrick/woody

At revision 3013

