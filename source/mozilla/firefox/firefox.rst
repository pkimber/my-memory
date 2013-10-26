Firefox
*******

Authentication
==============

Integrated Windows Authentication in Firefox
--------------------------------------------

http://klomdark.servebeer.com:8081/MessageBase2/ReadMessage.aspx?MsgNum=1746

::

  Posted by: Ben Kimball
  5/14/2005 10:22:07 PM

  If you need Windows Authentication in firefox do the following:
  Open firefox
  Browse to about:config

  Find "network.automatic-ntlm-auth.trused-uris"
  Modify the value and enter in your intranet sites that you must pass your
  username and password to.

  For some sites I connect to I also had to add values to:
  "network.negotiate-auth.delegation-uris"
  "network.negotiate-auth.trusted-uris"

::

  ../../images/howto/mozilla/windows-authentication.gif

Also worth looking at `Integrated Authentication`_ on the Mozilla website.

Cache
=====

To clear the cache:

- Click Tools and select Options.
- Click the Advanced icon and click the Network tab.
- Click Clear Now under the Cache section.
- Click Ok.
- Exit and relaunch the browser.

email
=====

`Set Firefox 3 to Launch Gmail for mailto Links`_

Profiles
========

`Command line arguments`_

`Firefox profiles - A very useful feature for web development`_

- Create a new profile (for this example create ``devprofile``:

  ::

    firefox -no-remote -ProfileManager

- To use the new profile:

  ::

    firefox -no-remote -p devprofile

Theme
=====

Phoenity
--------

My favourite theme:

Phoenity_

Mostly Crystal
--------------

`Mostly Crystal`_

Profiles
========

To manage profiles start firefox like this:

::

  firefox -profilemanager

`Locate your profile folder`_

Smart Keywords
==============

Visit the page that has the search field that you search with.

Right click on the search field.

Choose Add a Keyword for this Search...

`What are Smart Keywords?`_


.. _`Integrated Authentication`: http://www.mozilla.org/projects/netlib/integrated-auth.html
.. _`Set Firefox 3 to Launch Gmail for mailto Links`: http://lifehacker.com/392287/set-firefox-3-to-launch-gmail-for-mailto-links
.. _`Command line arguments`: http://kb.mozillazine.org/Command_line_arguments
.. _`Firefox profiles - A very useful feature for web development`: http://weblogs.java.net/blog/bino_george/archive/2007/07/firefox_profile_1.html
.. _Phoenity: http://phoenity.com/
.. _`Mostly Crystal`: http://www.tom-cat.com/mozilla/
.. _`Locate your profile folder`: http://www.mozilla.org/support/firefox/profile#locate
.. _`What are Smart Keywords?`: http://www.mozilla.org/products/firefox/smart-keywords.html

