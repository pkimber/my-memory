Search
******

Re-index
========

`Force google reindex of site`_

Here are a couple of options:

- To ask Google to index your site, submit the URL at this page:
  http://www.google.com/addurl/?continue=/addurl
- Submit a Sitemap to the Webmaster admin interface:

  - Download the *Sitemap Generator program files*, ``sitemap_gen-1.4.tar.gz``,
    from
    http://sitemap-generators.googlecode.com/svn/trunk/docs/en/sitemap-generator.html
  - Extract to a folder:

    ::

      cd ~/src
      tar xzf ~/Downloads/google/sitemap_gen-1.4.tar.gz
      cd sitemap_gen-1.4

  - Make your own copy of the ``example_config.xml`` file and change it's
    permissions so you can edit it e.g:

    ::

      cp example_config.xml pkimber_net_config.xml
      chmod 644 pkimber_net_config.xml

  - Edit the file.  To create a basic site map I did the following:

    - Set the basic site configuration:

      ::

        <site
          base_url="http://pkimber.net/"
          store_into="sitemap.xml.gz"
          verbose="1"
          >

    - Commented out all ``MODIFY`` or ``DELETE`` sections apart from:

      ::

          <directory
              path="/home/patrick/backup/pkimber/webroot"
              url="http://pkimber.net/"
             default_file="index.html"
          />

    - Used these basic filters (only), which just include html files:

      ::

          <filter action="pass" type="wildcard" pattern="*.htm*" />
          <filter action="drop" type="wildcard" pattern="*" />

  - Running the following command created the ``sitemap.xml.gz`` file:

    ::

      python sitemap_gen.py --config=pkimber_net_config.xml --testing

  - I then used the Google Webmaster tools to *Submit a Sitemap*.

    Note: The documentation for the *Sitemap Generator* tool, suggests setting
    up a ``cron`` job every half an hour (or whatever) to update the
    re-submit the site map...

Site
====

To search within a site:

::

  unittest site:http://www.openobject.com/irc/



.. _`Force google reindex of site`: http://interestingwebs.blogspot.com/2009/10/force-google-reindex-of-site.html

