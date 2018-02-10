elasticsearch
*************

.. highlight:: bash

ElasticSearch 5
---------------

From Repositories_

Install :doc:`../../linux/distro/ubuntu/java`::

  sudo wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

Add to the list of sources::

  echo "deb http://packages.elastic.co/elasticsearch/2.x/debian stable main" | sudo tee -a /etc/apt/sources.list.d/elasticsearch-2.x.list

ElasticSearch 6
---------------

::

  wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
  echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-6.x.list

Install
-------

::

  sudo apt update
  sudo apt install elasticsearch
  sudo service elasticsearch start

Tips
----

.. tip:: See https://www.kbsoftware.co.uk/docs/app-search.html
         for diagnostics etc.

.. tip:: See https://www.kbsoftware.co.uk/docs/dev-elasticsearch.html
         for how to install the Phoentic Analysis plugins.

Query
=====

Match all documents:

.. code-block:: json

  { "match_all": {} }

Sample
======

Using HTTPie::

  http GET http://localhost:9200/job-index/_analyze analyzer=my_analyzer text="Plymouth"

Stats
=====

Using the python API:

.. code-block:: python

  from elasticsearch import Elasticsearch
  es = ElasticSearch()
  stats = es.indices.stats('my-index')

  import pprint
  pp = pprint.PrettyPrinter(indent=4)
  pp.pprint(stats)

  stats['_all']['primaries']['docs']
  # {'count': 6, 'deleted': 0}

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
        # using the DocType from below
        return QuestionDoc(meta={'id': d.pop('_id')}, **d)

Very easy to query many indexes at once.

After loading

To verify that the information has loaded into ElasticSearch::

  http://localhost:9200/
  http://localhost:9200/_search
  http://localhost:9200/_search?q=bean
  http://localhost:9200/_search?q=tags:bean
  http://localhost:9200/_search?q=awful flavor

- http://localhost:9200/ will return the version number.
- Scoring not relevant when only search for one word.
- It used to ignore the common words e.g. ``the``, but not longer.

Client::

  # this is a very low level api
  from elasticsearch import ElasticSearch
  es = ElasticSearch()
  es.info()
  es.search(q='awful flavour')
  es.search(body={"query": {"filtered": {"query": {"bool": {"should": [{"match": {"title": "bean"}}, {"match": {"body": "bean"}}}, "filter": {"term": {"tags": "beans"}}}})
  es.indices.get_mapping(index='stack', doc_type='question')

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
  result.aggregations.per_tag.buckets

  # DocType is just like a Django model
  # in search.py
  # ElasticSearch still uses the dynamic mappings
  from elasticsearch_dsl import DocType
  class Question(DocType):
      creation_date = Date()
      tags = String(index='not_analyzed', multi=True)

  Question._doc_type.mapping.to_dict()
  # refresh the actual field types from elasticsearch
  Question._doc_type.refresh()
  Question._doc_type.mapping.to_dict()
  Question.get(id=464)

Reply on ``post_save`` being more or less reliable and then reindex everything
every now and again::

  def update_search(instance, **kwargs):
      instance.to_search().save()

  post_save.connect(update_search, sender=Answer)

You should have 1 server or more than 2.  Do not have 2 servers.  This is
called *split brain*.


.. _Repositories: https://www.elastic.co/guide/en/elasticsearch/reference/current/setup-repositories.html
