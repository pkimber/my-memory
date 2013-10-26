Win32
*****

Links
=====

- https://sourceforge.net/projects/pywin32/
- `Microsoft, TechNet, Script Repository: Sample Python Scripts`_

Download
========

Download ``pywin32-210.win32-py2.5.exe`` (for python 2.5) from the site.

Run the installer (login as administrator)...

Sample
======

Get User Information
--------------------

::

  import win32api
  import win32net
  import win32netcon

  class windowsAPI(object):
      def GetUser(self):
          info = self.UserGetInfo()
          return info['name']

      def UserGetInfo(self):
          dc = win32net.NetServerEnum(None,100,win32netcon.SV_TYPE_DOMAIN_CTRL)
          user = win32api.GetUserName()
          if dc[0]:
              dcname = dc[0][0]['name']
              return win32net.NetUserGetInfo("\\\\"+dcname,user,1)
          else:
              return win32net.NetUserGetInfo(None,user,1)

Convert Word files to text format.
----------------------------------

::

  # http://aspn.activestate.com/ASPN/Cookbook/Python/Recipe/279003
  #
  # Title: Converting Word documents to text
  # Submitter: Simon Brunning (other recipes)
  # Last Updated: 2004/09/02
  # Version no: 1.3
  #
  # Description:
  #
  # Here's a script to save all Word documents in and below a given directory to text.

  import fnmatch, os, pythoncom, sys, win32com.client

  class word2text(object):
      def __init__(self):
          pass

      def convert(self, folder):
          wordapp = win32com.client.gencache.EnsureDispatch("Word.Application")
          try:
              for path, dirs, files in os.walk(folder):
                  for doc in [os.path.abspath(os.path.join(path, filename)) for filename in files if fnmatch.fnmatch(filename, '*.doc')]:
                      print "processing %s" % doc
                      wordapp.Documents.Open(doc)
                      pos = doc.rfind('.')
                      docastxt = doc[:pos + 1] + 'txt'
                      wordapp.ActiveDocument.SaveAs(docastxt, FileFormat=win32com.client.constants.wdFormatTextLineBreaks)
                      wordapp.ActiveWindow.Close()
          finally:
              wordapp.Quit()

Service
=======

- `Python Windows Services`_
- Using this sample application: sample-windows-service.py_
- Install the service (on Vista start the command prompt using
  *Run as administrator*):

  ::

    python sample-windows-service.py install

- The service can now be stopped and started using *Services*
  (``services.msc``) or from the command line e.g:

  ::

    python sample-windows-service.py start
    python sample-windows-service.py stop
    python sample-windows-service.py update
    python sample-windows-service.py restart

  View command options by entering ``python sample-windows-service.py``..

- Log enties can be viewed in *Event Viewer*
  (``eventvwr.exe``), *Windows Logs*, *Application*...
- To remove the service (on Vista start the command prompt using
  *Run as administrator*):

  ::

    python sample-windows-service.py remove

WMI
===

- `Tim Golden, WMI Cookbook`_:

  - :doc:`conference/wmi`, PyCon UK 2008, Conference Talk.

- Blog - Corey Goldberg:

  - `Python - Get Remote Windows Metrics Script`_
  - `Python - Windows - Reboot a Remote Server`_
  - `Python - Monitor Windows Remotely With WMI`_


.. _`Microsoft, TechNet, Script Repository: Sample Python Scripts`: http://www.microsoft.com/technet/scriptcenter/scripts/python/default.mspx
.. _`Python Windows Services`: http://essiene.blogspot.com/2005/04/python-windows-services.html
.. _sample-windows-service.py: http://toybox/hg/sample/file/tip/python/sample-windows-service.py
.. _`Tim Golden, WMI Cookbook`: http://timgolden.me.uk/python/wmi_cookbook.html
.. _`Python - Get Remote Windows Metrics Script`: http://coreygoldberg.blogspot.com/2008/12/python-windows-remote-metrics-script.html
.. _`Python - Windows - Reboot a Remote Server`: http://coreygoldberg.blogspot.com/2008/12/python-windows-reboot-remote-server.html
.. _`Python - Monitor Windows Remotely With WMI`: http://coreygoldberg.blogspot.com/2008/12/python-monitor-windows-remotely-with.html

