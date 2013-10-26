Log4Net - Issues
****************

Enable internal debugging
=========================

`FAQ: How do I enable log4net internal debugging?`_

::

  <?xml version="1.0" encoding="utf-8" ?>
  <configuration>
    <appSettings>
      <add key="log4net.Internal.Debug" value="true"/>
    </appSettings>
  </configuration>

This setting is read immediately on startup an will cause all internal
debugging messages to be emitted.

**Note**: Add these settings to the end of the configuration file i.e. after
``</configSections>`` and after the final ``</log4net>`` tag.

No Logging
==========

- Have you set-up the assembly configuration in ``AssemblyInfo.cs``?  For more
  information see :doc:`getting-started`, *Configuration*, *Assembly*...
- I had a situation where my main application did not do any logging, but one
  of the references did.  I added logging to the main application, and
  everything burst into life.


.. _`FAQ: How do I enable log4net internal debugging?`: http://logging.apache.org/log4net/release/faq.html
