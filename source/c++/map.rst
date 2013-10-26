Map
***

.. highlight:: c++

header
======

::

  #include <map>

  std::map<unsigned int, std::string> KeyMap;

Copy
====

::

  copyTo.erase(copyTo.begin(), copyTo.end());

  std::map<unsigned int, std::string>::const_iterator i;
  for(i = KeyMap.begin(); i != KeyMap.end(); ++i)
      copyTo[i->first] = i->second;

erase
=====

::

  KeyMap.erase(KeyMap.begin(), KeyMap.end());

Add an element
==============

::

  int idx(1);
  string keyMapID("value");

  KeyMap[idx] = keyMapID;

Find an element
===============

::

  int idx(1);

  std::map<unsigned int, std::string>::const_iterator i = KeyMap.find(idx);
  if(i != KeyMap.end())
      string value(i->second);

