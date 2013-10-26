Logging
*******

.. highlight:: c++

Links
=====

- `Using logger without Application class`_

Getting Started
===============

To use logging without using the POCO application class:

- Create a simple ``LogManager`` class which creates a ``Logger``:

  ::

    #include "Poco/FileChannel.h"
    #include "Poco/FormattingChannel.h"
    #include "Poco/Logger.h"
    #include "Poco/Message.h"
    #include "Poco/PatternFormatter.h"

    LogManager::LogManager()
    {
        Poco::FormattingChannel* pFCFile = new Poco::FormattingChannel(new Poco::PatternFormatter("%Y-%m-%d %H:%M:%S.%c %N[%P]:%s:%q:%t"));
        pFCFile->setChannel(new Poco::FileChannel("logger.log"));
        pFCFile->open();
        Poco::Logger::create("FileLogger", pFCFile, Poco::Message::PRIO_TRACE);
    }

- Create an instance of the LogManager class (in the main entry point to your
  application:

  ::

    LogManager();

- In the other classes where you want to do some logging:

  ::

    #include "Poco/Logger.h"

    HtmlDocumentReader::HtmlDocumentReader()
    {
        Poco::Logger::get("FileLogger").error("HtmlDocumentReader");

- The log output for the above sample will appear on the Windows Desktop...


.. _`Using logger without Application class`: http://pocoproject.org/forum/viewtopic.php?f=10&t=496&p=1532&hilit=logging#p1532

