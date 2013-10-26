Learning
********

Basics of Search and Relevancy with Apache Solr (Webinar 02/12/2009)
====================================================================

- Firefox superior for XML:

  - Right click on toolbar, select *Customise...*, *Add New Toolbar*, drag
    address control to new toolbar.

- Copy and paste better on IE and Safari.

- Solr *Command Line*:

  - ``debugQuery=true``.

    - ``tf`` term frequency.
    - ``idf`` how common is this word across all documents.

  - To view the explain output in a slightly easier to read format, add
    ``&wt=xslt&tr=example.xsl`` to the query and view in IE or Safari.
  - ``wt`` (what type), XML, CSV, JSON.
  - ``qt=dismax``... searches multiple fields.... great for freshness and
    popularity.
 
    *dis*-joint text (multiple fields) - *max*-imum match (score).
    Must set-up ``schema.xml`` and ``solrconfig.xml``.
    Make sure you understand the ``mm`` field!!

    Numeric functions, boost on recent dates and popularity.  Check out the
    ``ord``, ``rord``, ``recip`` functions.

    ``bf`` = boost function... http://wiki.apache.org/solr/FunctionQuery
    Have a look in ``solrconfig.xml``.

- Very common words e.g. the company name, will score very low (because SOLR
  assumes they are not very relevant.

