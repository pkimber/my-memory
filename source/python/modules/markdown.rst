Markdown
********

Links
=====

- http://www.freewisdom.org/projects/python-markdown/

Extensions
==========

- `Available Extensions`_

Configuration
-------------

Two methods to configure extensions (using keyword arguments):

- Keyword arguments:

  ::

    'extensions': ['wikilinks',],
    'extension_configs': {
        'wikilinks': [
            ('base_url', 'http://example.com/'),
        ]
    },

- String:

  ::

    'extensions': ['wikilinks(base_url=http://example.com/)',],


  Note: When used with the :doc:`../../django/applications/template-utils` you
  will need to use the *String* method to configure extensions, as the
  ``extension_configs`` do not get passed to the ``markdown`` method (in the
  markdown module).

Install
=======

::

  pip install Markdown

Sample
======

::

  import markdown
  s = 'Dartmoor Inn\r\n============\r\n\r\n[For more information see...](http://www.dartmoorinn.com/ "Dartmoor Inn")'
  markdown.markdown(s)
  > u'<h1>Dartmoor Inn</h1>\n<p><a href="http://www.dartmoorinn.com/" title="Dartmoor Inn">For more information see...</a></p>'

Convert
=======

To convert markdown to text:

- Install :doc:`beautiful-soup`.
- Use the following code (from stackoverflow,
  `How to convert markdown formatted text to text`_):

  ::

    from BeautifulSoup import BeautifulSoup
    from markdown import markdown
    html = markdown('News\n====\n\n* Point 1\n* Point 2\n')
    html
    u'<h1>News</h1>\n<ul>\n<li>Point 1</li>\n<li>Point 2</li>\n</ul>'
    text = ''.join(BeautifulSoup(html).findAll(text=True))
    text
    u'News\n\nPoint 1\nPoint 2\n'

Extensions
==========

Tables
------

::

  import markdown
  s = '''
      Name | Age
      ---- | ---
      Pat  | 46
      Sam  | 20
  '''
  markdown.markdown(s, ['tables',])
  > u'<table>\n<thead>\n<tr>\n<th>Name</th>\n<th>Age</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>Pat</td>\n<td>46</td>\n</tr>\n<tr>\n<td>Sam</td>\n<td>20</td>\n</tr>\n</tbody>\n</table>'

Video
-----

- http://code.google.com/p/python-markdown-video/
- `Python Markdown Extension for Video`_

  - Install:

    ::

      pip install -e hg+https://python-markdown-video.googlecode.com/hg#egg=python-markdown-video

  - Add the ``video`` extension.  This example is from a Django
    ``settings.py`` file:

    ::

      MARKUP_FILTER = (
          'markdown',
          {
              'safe_mode': True,
              'extensions': ['wikilinks(base_url=/wiki/)', 'tables', 'video',],
          },
      )

  - To embed a video in the Wiki, just put the URL into the text.

WikiLinks
---------

::

  import markdown
  markdown.markdown("This is a [[WikiLink]].", ['wikilinks'])
  > u'<p>This is a <a class="wikilink" href="/WikiLink/">WikiLink</a>.</p>'


.. _`Available Extensions`: http://www.freewisdom.org/projects/python-markdown/Available_Extensions
.. _`How to convert markdown formatted text to text`: http://stackoverflow.com/questions/761824/python-how-to-convert-markdown-formatted-text-to-text
.. _`Python Markdown Extension for Video`: http://www.tylerlesmann.com/2009/apr/02/python-markdown-extension-video/

