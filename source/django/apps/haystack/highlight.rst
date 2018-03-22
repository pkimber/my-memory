Highlighting
************

Usage
=====

- Include the template tag:

  ::

    {% load highlight %}

- Highlight the text:

  ::

    {% highlight result.object.text with request.REQUEST.q %}

  Note: In this example, the text I want to highlight is in the ``text`` field
  in the ``object``.

