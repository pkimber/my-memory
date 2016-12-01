Elements
********

Page Break
==========

.. code-block:: python

  elements.append(platypus.PageBreak())

Paragraph
=========

Line Break
----------

Use the ``<br />`` tag:

.. code-block:: python

  platypus.Paragraph(
      '130 High Street<br />'
      'Crediton<br />'
      'Devon',
      body_text_style
  )

Spacer
------

.. code-block:: python

  elements.append(platypus.Spacer(1, 12))
