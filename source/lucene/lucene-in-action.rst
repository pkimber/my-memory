Lucene in Action
****************

Document Field Types
====================

Lucene in Action - Chapter 1, Section 1.5.5

==========================  ==========  ==========  ==========
Field Method                Analyzed    Indexed      Stored
==========================  ==========  ==========  ==========
Keyword(String, String)                 Y            Y
Keyword(String, Date)                                Y
UnIndexed(String, String)
UnStored(String, String)    Y           Y
Text(String, String)        Y           Y            Y
Text(String, Reader)        Y           Y
==========================  ==========  ==========  ==========

Delete/Update Documents
=======================

Lucene in Action - Chapter 2, Section 2.2.4

Tip: When removing and adding Documents, do it in batches.  This will always
be faster than interleaving delete and add operations.

Indexing Dates
==============

Lucene in Action - Chapter 2, Section 2.4

May be more efficient to store dates as a string.

Indexing Numbers
================

Lucene in Action - Chapter 2, Section 2.5

Use the correct Analyzer (or numbers may be discarded)

Pad numeric fields with zeros

Choose the correct Field type

Sorting
=======

Lucene in Action - Chapter 2, Section 2.6

Fields used for sorting have to be indexed and must not be tokenized.

Limiting Field Sizes
====================

Lucene in Action - Chapter 2, Section 2.7.3

It is possible to set Lucene to only index the first x number of terms
(or words) in a document.

Optimise an Index
=================

Lucene in Action - Chapter 2, Section 2.8

An index should only be optimised when the index will remain
unmodified for a while.

Concurrency Rules
=================

Lucene in Action - Chapter 2, Section 2.9.1

Only a single index-modifying operation may execute at a time.
An index should be opened by a single IndexWriter or a single
IndexReader at a time.

Index Locking
=============

Lucene in Action - Chapter 2, Section 2.9.3

If multiple computers are updating an index on a server then
the location of the lock files must be set to a consistent location.

Analysis
========

Lucene in Action - Chapter 4, Section 4.2.3, Page 114

To run the AnalyzerDemo and see the output:

::

  cd c:\Tools\LuceneInAction\build\classes\
  java -cp c:\tools\lucene-1.4.3\lucene-1.4.3.jar;. lia.analysis.AnalyzerDemo

XML Processing
==============

http://jakarta.apache.org/commons/digester/

PDF Processing
==============

http://www.pdfbox.org

Microsoft Word
==============

http://www.textmining.org/

Tools
=====

Browse your index:

- Lucli the Lucene Command Line:
  http://fastbuzz.bloki.com/index.jsp?name=lucli&folderId=42277
- Luke - Lucene Index Toolbox:
  http://www.getopt.org/luke/
- Lucene Index Monitor:
  http://limo.sourceforge.net/
- Stemming/SnowballAnalyzer:
  http://snowball.tartarus.org/

