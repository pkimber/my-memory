elasticsearch
*************

From `Install ElasticSearch in Ubuntu 14.04 server`

Install :doc:`../../linux/ubuntu/java`::

  sudo wget -O - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | sudo apt-key add -

Add the following line to ``/etc/apt/sources.list``::

  deb http://packages.elasticsearch.org/elasticsearch/1.3/debian stable main

::

  sudo apt-get update
  sudo apt-get install elasticsearch
  sudo service elasticsearch start

See https://www.pkimber.net/open/app-search.html for diagnostics etc...

DjangoConEU 2015
================

Based on lucene

No need to just index what is in the model.  You can cram as much stuff as you
want into a document.  Does not have to be in a simple key/value format.  It
will happily accept lists etc.  Just has to be in the format of a simple JSON
document.

We must have an ``_id`` field e.g::

  def to_search(self):
        return {
            '_id': self.pk
            'creation_date' self.creation_date,
            'body': self.body,
            'score': self.score,
            'comments': [c.to_search() for c in self.comments()],
        }

Very easy to query many indexes at once.

After loading

To verify that the information has loaded into ElasticSearch::

  http://localhost:9200/
  http://localhost:9200/_search
  http://localhost:9200/_search?q=bean
  http://localhost:9200/_search?q=tags:bean
  http://localhost:9200/_search?q=awful flavor

- Scoring not relevant when only search for one word.
- It used to ignore the common words e.g. ``the``, but not longer.

Client::

  # this is a very low level api
  from elasticsearch import ElasticSearch
  es = ElasticSearch()
  es.info()
  es.search(q='awful flavour')
  es.search(body={"query": {"filtered": {"query": {"bool": {"should": [{"match": {"title": "bean"}}, {"match": {"body": "bean"}}}, "filter": {"term": {"tags": "beans"}}}})

  # this is better
  from elasticsearch_dsl import Search
  s = Search()
  # one query type
  s = s.query('match', body='bean')
  s.to_dict()
  # another query type
  s.filter('term', tags='beans')
  s.query(
      'bool',
      should=[
          Q('match', title='beans'),
          Q('match', title__ngram='beans'),
          Q('match', title={'query': 'beans', 'fuzzinesss': 2}),
      ],
      minimum_should_match='30%'
  )
  # result can use dot notation e.g.
  result.comment
  # for the id, we use meta
  result.meta.id


.. _`Install ElasticSearch in Ubuntu 14.04 server`: http://blog.bekijkhet.com/2014/06/install-elasticsearch-in-ubuntu-1404.html
