XML
***

.. highlight:: python

.. important:: Check out the :doc:`snippets/xml` snippets page.

Links
=====

- `What's New in Python 2.5`_
  Working with XML through ElementTree
- `ElementTree Overview`_
  `Python Library Reference- The ElementTree XML API`_
- http://codespeak.net/lxml/
  lxml is the most feature-rich and easy-to-use library for working with XML
  and HTML in the Python language.
- `XML building library`_

Note
====

*The core components (of ElementTree) are also shipped with Python 2.5 and
later*...

Sample
======

Read
----

.. note:: The :doc:`snippets/xml` snippets page has a python 3 example which
          iterates over attributes **and** tags.

An older python 2 example which iterates over tags::

  from xml.etree import ElementTree as ET
  tree = ET.parse('pom.xml')
  r = tree.getroot()
  def trav(node, indent=0):
      for c in node.getchildren():
          print ' '*indent, c.tag, ':', c.text
          trav(c, indent+1)
  trav(r)

...using the ``trav`` method above, we can iterate over a string::

  >>> xml = '<code><detail><userId>79918</userId><totalPoints>8</totalPoints></detail></code>'
  >>> tree = ET.fromstring(xml)
  >>> trav(tree)

Another (slightly confusing) sample::

  >>> testtext = """
  ...     <html><body>hello world.  <i>foo!</i>
  ...     </body></html>"""
  >>> testtext
  '\n    <html><body>hello world.  <i>foo!</i>\n    </body></html>'
  >>> tree = ET.fromstring(testtext)
  >>> len(tree)
  1
  >>> tree[0].text
  'hello world.  '
  >>> tree[0][0].text
  'foo!'
  >>> for italicNode in tree.findall('.//i'):
  ...     print italicNode.text
  ...
  foo!
  >>> ET.tostring(tree)
  '<html><body>hello world.  <i>foo!</i>\n    </body></html>'
  >>>

Create
------

::

  from xml.etree import ElementTree as ET
  root = ET.Element('html')
  head = ET.SubElement(root, 'head')
  title = ET.SubElement(head, 'title')
  title.text = 'Page Title'
  body = ET.SubElement(root, 'body')
  body.set('bgcolor', '#ffffff')
  body.text = 'Hello World!'
  tree = ET.ElementTree(root)
  tree.write('temp.xml')

Encoding

e.g. using the ``tree`` object from the *Create* sample (above)::

  tree.write('out.xml', encoding="UTF-8")

`Introducing ElementTree 1.3, XML Output`_

Pretty Print

We can produce a *pretty print* using this method::

  def indent(elem, level=0):
      i = "\n" + level*"  "
      if len(elem):
          if not elem.text or not elem.text.strip():
              elem.text = i + "  "
          if not elem.tail or not elem.tail.strip():
              elem.tail = i
          for elem in elem:
              indent(elem, level+1)
          if not elem.tail or not elem.tail.strip():
              elem.tail = i
      else:
          if level and (not elem.tail or not elem.tail.strip()):
              elem.tail = i

e.g. using the ``tree`` object from the *Create* sample (above)::

  indent(tree.getroot())
  tree.write('pretty.xml', encoding="ISO-8859-1")

- `Element Library Functions, prettyprint`_
- `Gentlemen indent your XML!`_
- `ActiveState, Recipe 576750: Pretty-print XML`_

::

  #!/usr/bin/env python
  import xml.dom.minidom as md
  import sys

  pretty_print = lambda f: '\n'.join([line for line in md.parse(open(f)).toprettyxml(indent=' '*2).split('\n') if line.strip()])

  if __name__ == "__main__":
     if len(sys.argv)>=2:
        print pretty_print(sys.argv[1])
     else:
        sys.exit("Usage: %s [xmlfile]" % sys.argv[0])

``find`` and ``findAll``
========================

For this example we will parse a standard Maven ``pom.xml`` file.

To find elements using *XPath like* syntax, we first need to know the
namespace::

  from xml.etree import ElementTree as ET
  tree = ET.parse('sample-app/pom.xml')
  root = tree.getroot()
  for element in root: print element.tag
     ...:
  {http://maven.apache.org/POM/4.0.0}modelVersion
  {http://maven.apache.org/POM/4.0.0}groupId
  {http://maven.apache.org/POM/4.0.0}artifactId
  ...

Don't forget to include the namespace when searching for elements::

  e = tree.find('{http://maven.apache.org/POM/4.0.0}artifactId')
  e.text
  'sample-app'

To find all elements in the xml file, prefix the query with ``\/\/``::

  e = tree.findall('//{http://maven.apache.org/POM/4.0.0}artifactId')
  for i in e:
      print i.text
     ....:
  sample-app
  junit

To search down through a specific path::

  e = tree.find('{http://maven.apache.org/POM/4.0.0}dependencies/{http://maven.apache.org/POM/4.0.0}dependency/{http://maven.apache.org/POM/4.0.0}artifactId')
  e.text
  'junit'


.. _`ActiveState, Recipe 576750: Pretty-print XML`: http://code.activestate.com/recipes/576750/
.. _`Element Library Functions, prettyprint`: http://effbot.org/zone/element-lib.htm#prettyprint
.. _`ElementTree Overview`: http://effbot.org/zone/element-index.htm
.. _`Gentlemen indent your XML!`: http://infix.se/2007/02/06/gentlemen-indent-your-xml
.. _`Introducing ElementTree 1.3, XML Output`: http://effbot.org/zone/elementtree-13-intro.htm
.. _`Python Library Reference- The ElementTree XML API`: http://docs.python.org/lib/module-xml.etree.ElementTree.html
.. _`What's New in Python 2.5`: http://www.onlamp.com/pub/a/python/2006/10/26/python-25.html?page=4
.. _`XML building library`: http://github.com/galvez/xmlwitch/
