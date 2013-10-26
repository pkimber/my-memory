Snippets
********

Create Index
============

::

  repositoryFolder = new File("test-repository");
  new IndexWriter(repositoryFolder, new StandardAnalyzer(), true).close();

Terms
=====

Count
-----

Count the number of terms in a field (jython code) (I am sure there must be
a better way to do this):

::

  # SET CLASSPATH=lucene-core-2.4.1.jar

  import org.apache.lucene.index.IndexReader
  import org.apache.lucene.index.Term
  import org.apache.lucene.index.TermEnum

  file_name = 'C:/repository/code-lookup/data/index'
  field_name = 'codeText'

  reader = org.apache.lucene.index.IndexReader.open(file_name)
  term = org.apache.lucene.index.Term(field_name, '')
  terms = reader.terms(term)

  count = 0
  while terms.next():
      term = terms.term()
      if term.field() == field_name:
          count = count + 1
      else:
          break

  print count

