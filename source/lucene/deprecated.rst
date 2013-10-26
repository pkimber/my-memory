Deprecated
**********

Field
=====

Keyword
-------

::

  Field.Keyword("name", "value");

...is the same as:

::

  new Field("name", "value", Field.Store.YES, Field.Index.UN_TOKENIZED);

Text
----

::

  Field.Text("name", "value");

...is the same as:

::

  new Field("name", "value", Field.Store.YES, Field.Index.TOKENIZED);

Token
=====

termText
--------

Replace method call to ``termText()`` in ``org.apache.lucene.analysis.Token``
with this method:

::

  private final String getTermText(final Token token) {
      String result = "";
      if (token.termBuffer() != null) {
          result = new String(token.termBuffer(), 0, token.termLength());
      }
      return result;
  }

