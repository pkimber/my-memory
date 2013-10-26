Query Language
**************

QueryParser
===========

To escape special characters use a backslash (\).  Special characters are:

::

  \ + - ! ( ) : ^ ] { } ~ * ?

Boolean operators:
------------------

::

  AND, OR and NOT

Terms listed without an operator use an implicit operator which by default is:

::

  OR

To change the default use an instance of QueryParser rather than the static
parse method.

::

  QueryParser parser = new QueryParser("fieldname", analyzer);
  parser.setOperator(QueryParser.DEFAULT_OPERATOR_AND);

Negating a term using ``NOT`` must be combined with at least one nonnegated
term.  (See book, "Lucene in Action", Section 3.5.2)
Each of the uppercase word operators has a shortcut syntax:

::

  Verbose         Shortcut
  a AND b         +a +b
  a OR b          a b
  a AND NOT b     +a -b

Grouping
--------

You can construct complex nested clauses using parentheses:

::

  (agile OR exteme) AND methodology

Field Selection
---------------

A default field is provided to the parse method.  Use field selector notation:

::

  title:lucene

You can group field selection over several terms:

::

  title:(a b c)

Range Queries
-------------

Text or date range queries use bracketed syntax with TO between the beginning
and ending term.  The type of bracket determines whether the range is
inclusive (square brackets) or exclusive (curly brackets).

::

  pubmonth:[200401 TO 200412]
  {200401 TO 200412}

Note: Nondate range queries use the beginning and ending terms as the user
entered them i.e. the terms are not analyzed.  The terms must not contain
whitespace. (the example queries are not date fields but text in the format
YYYYMM)
Date parsing is slightly weird.  See book "Lucene in Action", Section 3.5.5

Phrase Queries
--------------

Terms in double quotes create a ``PhraseQuery``:

::

  \"This is Some Phrase*\"

The query will be analyzed, so in this example the ``StandardAnalyzer`` parses
the query down to "some phrase".

Note: The asterisk does not result in a wildcard search.
The slop factor is zero unless you specify it using a trailing tilde:

::

  \"sloppy phrase\"~5"

Note: A sloppy phrase query doesn't require that the terms match in the
same order.  (For a solution, book "Lucene in Action", section 6.3.4)

Note: Single-term phrases are converted to a TermQuery (not a PhraseQuery).
See book "Lucene in Action", Section 3.4.5 for info on PhraseQuery

Wildcard and prefix queries
---------------------------

If a term contains an asterisk or a question mark, it's considered a
WildcardQuery.  When the term only contains a trailing asterisk it's
considered a PrefixQuery:

::

  PrefixQuery*

Note: Both are converted to lowercase by default (this can be controlled).
Note: Wildcards at the beginning of a term are prohibited.

Fuzzy Queries
-------------

A trailing tilde creates a fuzzy query on the preceding term.
Note: The same performance caveats apply as the WildcardQuery.
See book, "Lucene in Action", Section 3.4.7

Boosting Queries
----------------

A carat (^) followed by a floating point number sets the boost factor
for the preceding query.

::

  junit^2.0 testing

Another example:

::

  boostkeywords:queen^1.5 body:queen

See book, "Lucene in Action", Section 3.3

