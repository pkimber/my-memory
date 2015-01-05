XML
***

.. highlight:: python

.. note:: Also see some older notes at :doc:`../xml`

Escape
======

I used the following code to un-escape some XML::

  from xml.etree import ElementTree
  import xml.sax.saxutils as saxutils

  tree = ElementTree.parse('your.xml')
  root = tree.getroot()
  text = saxutils.unescape(root.text)
  root = ElementTree.fromstring(text)

Pretty
======

::

  from xml.etree import ElementTree
  from xml.dom import minidom

  def prettify(elem):
      """Return a pretty-printed XML string for the Element."""
      rough_string = ElementTree.tostring(elem, 'utf-8')
      reparsed = minidom.parseString(rough_string)
      return reparsed.toprettyxml(indent="  ")

Traverse
========

python 3 code to traverse XML and display attributes::

  from xml.etree import ElementTree

  def trav(node, indent=0):
      for name, value in node.attrib.items():
          print('  ' * indent, name, ':', value)
      for c in node.getchildren():
          print('  ' * indent, c.tag, ':', c.text)
          trav(c, indent+1)

  tree = ElementTree.parse('your.xml')
  root = tree.getroot()
  trav(root)

An older example::

  from xml.etree import ElementTree as ET
  tree = ET.parse('out.xml')
  root = tree.getroot()
  for e in root:
      print '-' * 79
      print e.tag
      for i in e:
          print i.tag, i.text
          if i.tag == 'town':
              print '------------------------ %s:  %s' % (i.tag, i.text,)
          if i.tag == 'outlet':
              print '------------------------ %s:  %s' % (i.tag, i.text,)
          if i.tag == 'dineOutId':
              print '------------------------ %s:  %s' % (i.tag, i.text,)
