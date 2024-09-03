attrs
*****

- https://www.attrs.org/en/stable/examples.html

.. highlight:: python

::

  from attrs import define

  @define
  class Run:
      code: str
      colour: str = None

  @define
  class Para:
      name: str
      style: str
      runs: list[Run]
