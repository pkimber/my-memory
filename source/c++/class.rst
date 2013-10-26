Class
*****

.. highlight:: c++

Source
======

Here is a simple class showing copy constructors and ``=`` operators:

- class.h_
- class.cpp_

Static
======

- ``h``

  ::

    class Utility
    {
        static std::string convert(std::wstring const & s);

- ``cpp``

  ::

    std::string Utility::convert(std::wstring const & s)
    {

- Source

  ::

    Utility::convert(command)


.. _class.h: ../../misc/howto/c++/class.h
.. _class.cpp: ../../misc/howto/c++/class.cpp
