YAML
****

.. highlight:: python

Links
=====

- http://www.pyyaml.org/
- Documentation_

Install
=======

::

  pip install pyyaml

Sample
======

Read
----

::

  import yaml
  data = yaml.load(open(file_name, "r"))
  print yaml.dump(data, default_flow_style=True)

::

  import yaml
  with open(file_name, 'r') as f:
      data = f.read()
      print yaml.dump(yaml.load(data), default_flow_style=False)

Write
-----

::

  data = {
      'name': 'User Management',
      'version': '0.2.0',
      'depend': [
          'cms',
          'abc',
          'crm',
      ]
  }
  import yaml
  with open('setup.yaml', 'w') as f:
      yaml.dump(data, f, default_flow_style=False)


.. _Documentation: http://pyyaml.org/wiki/PyYAMLDocumentation
