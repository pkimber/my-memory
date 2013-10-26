XML
***

::

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

