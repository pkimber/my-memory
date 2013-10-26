string
******

.. highlight:: c++

Header file...

::

  #include <string>

  class MyClass
  {
  private:
      std::string name;

Source:

::

  using std::string;

  string MyClass::GetSQL()
  {
      string sql("select...

Stream
======

::

  #include <sstream>
  #include <iostream>

  long cImages = 25;
  std::ostringstream stm;                    // wostringstream for Win32/unicode.
  stm << "Found " << cImages << " images.";
  DisplayMessage(stm.str());

Unicode (Windows API)
=====================

- `std::wstring VS std::string`_
- `Convert std::string to std::wstring`_

Use ``std::wstring``.

Convert
-------

::

  // std::string -> std::wstring
  std::string s("string");
  std::wstring ws;
  ws.assign(s.begin(), s.end());

  // std::wstring -> std::string
  std::wstring ws(L"wstring");
  std::string s;
  s.assign(ws.begin(), ws.end());


.. _`std::wstring VS std::string`: http://stackoverflow.com/questions/402283/stdwstring-vs-stdstring
.. _`Convert std::string to std::wstring`: http://blog.mijalko.com/2008/06/convert-stdstring-to-stdwstring.html

