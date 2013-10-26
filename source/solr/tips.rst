Tips
****

From `Some Lucene/Solr Freebies`_:

These are things that we usually end up telling most clients at some stage of
the game.  Many of them fall under the "broken windows" theory of software
development, so don’t expect anything too earth shattering.

- The Solr example is just that, an example.  If you haven’t cleaned up the
  example fields and other stuff it tells me you haven’t thought much about
  your domain and how best to represent it in search.  I’d say it’s safe to say
  a good chunk of our consulting work is about helping people better understand
  how to represent their domain in the search engine.  Take the time to think
  about what field types you are using, what analysis that field type does and
  how best to represent that content for searching, faceting, sorting, etc.
  For instance, Porter/Snowball stemming is often quite aggressive, is that
  really what you want?  In other words, know your analysis.
- Be prepared to state what each field is and why it is
  indexed/stored/multivalued/etc.
  See http://wiki.apache.org/solr/FieldOptionsByUseCase.  This holds true for
  Lucene, too.
- Likewise in the ``solrconfig.xml``, remove ununsed/example RequestHandlers,
  etc.  Also, some of the configurations of Request Handlers, specifically the
  Spelling one, are for demo purposes.  Read the comments in the file to make
  sure you understand how to use it.  Cleaning up the config and the schema
  will make it easier to maintain these as well as help getting new devs up to
  speed.
- Lucene users: faceting by loading the values from stored fields and counting
  them for every search is a no-no performance-wise.
- Really large values for the Solr cache sizes is (usually) considered harmful.
  Be prepared to justify why you have a filterCache size of 500K items.
  Bigger isn’t always better.
- Ad hoc relevance testing is pretty close to having no relevance testing.  If
  you don’t know what queries work, how do you know if your users are
  succeeding?
- You should always know your top X queries, top Y query terms and any queries
  that return zero results, at least on a daily or weekly basis.  LucidWorks
  Enterprise builds this into the dashboard if you’d like to save yourself some
  time writing the log analysis code and still want to leverage all the power
  of Lucene/Solr.   FWIW, By you, I mean anyone on your team who has a stake in
  search, including engineers, business owners and QA.  Not knowing what your
  users are asking is a recipe for poor search.
- NFS = bad for search (usually).  It’s all right to store the index there, but
  you shouldn’t read/write from it (it will work, it just won’t perform, in my
  experience)
- Buy Lucene in Action.  Read it.
- In Solr, the fastest way to index is by using multiple client threads sending
  batches of documents at a time.  In Lucene, the IndexWriter is thread-safe,
  so share it across threads as well for writes.
- Bonus: Don’t re-invent the wheel.  I’ve seen a lot of good Lucene
  applications and a fair number of poorly written ones.  I’ve also seen a lot
  of Lucene applications that look just like Solr, but aren’t nearly as well
  written or as well tested.  Ask yourself, do I really need to maintain
  low-level Lucene code for managing IndexReaders?  Do I really need to
  implement my own Faceting code?  My own Replication/distributed search?  If
  not, consider Solr.  It really isn’t that hard to switch.  If you answer yes,
  great, I’d love to hear your use case.  In either case, we’d be happy to
  review your situation and give you best practices, all the way down to the
  code level, if need be.

Like I said, nothing too earth shattering, but I do come across many of these
issues on a regular basis.  Also, note these are based on my experience, your
mileage may vary.  Naturally, I’d love to hear your tips as well!


.. _`Some Lucene/Solr Freebies`: http://www.lucidimagination.com/blog/2011/03/07/some-lucenesolr-freebies/

