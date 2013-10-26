Getting Started
***************

Installation
============

Download ``jakarta-jmeter-2.3.2.zip`` from: http://jakarta.apache.org/jmeter/

I installed to:

::

  C:\tools\jakarta-jmeter-2.3.2\

Run
===

To run the JMeter application:

::

  cd C:\tools\jakarta-jmeter-2.3.2\bin
  jmeterw.bat

Remote
======

Notes for running JMeter in remote mode, :doc:`jmeter-remote`.

Non-GUI Mode
============

For non-interactive testing, you may choose to run JMeter without the GUI. To
do so, use the following command options

- ``-n`` This specifies JMeter is to run in non-gui mode
- ``-t`` [name of JMX file that contains the Test Plan].
- ``-l`` [name of JTL file to log sample results to].
- ``-r`` Run all remote servers specified in ``jmeter.properties``
         (or remote servers specified on command line by overriding properties)

The script also lets you specify the optional firewall/proxy server information:

- ``-H`` [proxy server hostname or ip address]
- ``-P`` [proxy server port]

Example:

::

  jmeter -n -t my_test.jmx -l log.jtl -H my.proxy.server -P 8000

Windows
-------

I used:

::

  cd C:\tools\jakarta-jmeter-2.1.1\bin\
  jmeter -n -t c:\projects\lucene-app-jmeter-test\lucene-app-jmeter-test.jmx

Linux
-----

Make sure the shell script is executable:

::

  cd ~/tools/jakarta-jmeter-2.1.1/bin/
  chmod +x jmeter

To get log4j working I had to copy (and rename) the normal log4j.properties file to:

::

  jakarta-jmeter-2.1.1/bin/log4j.conf

Run the test:

::

  cd ~/tools/jakarta-jmeter-2.1.1/bin/
  ./jmeter -n -t ~/projects/lucene-app-jmeter-test/lucene-app-jmeter-test.jmx



