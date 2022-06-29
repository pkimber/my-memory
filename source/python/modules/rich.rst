Rich
****

.. highlight:: python

Usage
=====

::

  from rich import print as rprint

  rprint("[yellow]check is app or project...")

Console
=======

.. note:: The colours don't seem to work in the ``fish`` shell?

::

  from rich.console import Console

  console = Console(color_system="256")

  style = "bold yellow on black"
  console.print(pillar_folder, style=style)

Pretty
======

::

  from rich.pretty import pprint
  pprint(data, expand_all=True)
