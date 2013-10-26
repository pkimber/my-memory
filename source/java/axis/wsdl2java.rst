WSDL2Java
*********

Download
========

Download ``axis2-1.4-bin.zip`` from http://ws.apache.org/axis2/

Install
=======

Extract the archive.  I extracted to:

::

  C:\tools\axis2-1.4\

Usage
=====

::

  SET AXIS2_HOME=\tools\axis2-1.4\
  \tools\axis2-1.4\bin\wsdl2java.bat -uri http://winamini.promotiondemo.com/smsinbound/smsinbound.asmx?wsdl -p com.sample -d adb -s -o build\client

...an older example...

::

  cd C:\Tools\axis2-0.9-bin\lib
  java -cp axis2-0.9.jar;axis-wsdl4j-1.2.jar;xbean-2.0.0-beta1.jar;stax-api-1.0.jar;\Tools\crimson\crimson.jar org.apache.axis2.wsdl.WSDL2Java -uri ..\samples\wsdl\Axis2SampleDocLit.wsdl -ss -sd -o c:\temp\my-wsdl -p org.mycompany.Axis2Example1

