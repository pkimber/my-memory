OpenSocial
**********

Links
=====

- `Project SocialSite - Enabling Social Network in your Application`_
- `Shindig is an OpenSocial container`_

Tutorial
========

- http://code.google.com/apis/opensocial/articles/tutorial/
- http://sandbox.orkut.com/
- http://code.google.com/p/sample-patrick-kimber/

- Upload this XML file to a web host:

  ::

    <?xml version="1.0" encoding="UTF-8" ?>
    <Module>
      <ModulePrefs title="Hello World!">
        <Require feature="opensocial-0.7" />
      </ModulePrefs>
      <Content type="html">
        <![CDATA[
          Hello, world... hope the day is treating you well!
        ]]>
      </Content>
    </Module>

  I uploaded to `Google Code`_.

- Log into the orkut sandbox, http://sandbox.orkut.com/, click the *edit* link
  to the right of *Apps*.
- Add the application using it's URL and give it permissions.
- You should be able to view your application by selecting it in the *Apps*
  section.

  Note: To stop orkut caching the application, add ``bpc=1`` to the URL of
  the page you are viewing.

Sample
======

- Basic Application `helloworld.xml`_
- A more complete *gift giving* application: `gifts.xml`_, and the associated
  JavaScript code, `gifts_friends.js`_.


.. _`Project SocialSite - Enabling Social Network in your Application`: http://blogs.sun.com/arungupta/entry/screencast_25_project_socialsite_enabling
.. _`Shindig is an OpenSocial container`: http://incubator.apache.org/shindig/
.. _`Google Code`: http://sample-patrick-kimber.googlecode.com/svn/trunk/learn/google/opensocial/tutorial/helloworld.xml
.. _`helloworld.xml`: http://toybox/hg/sample/file/tip/java/google/opensocial/helloworld.xml
.. _`gifts.xml`: http://toybox/hg/sample/file/tip/java/google/opensocial/gifts.xml
.. _`gifts_friends.js`: http://toybox/hg/sample/file/tip/java/google/opensocial/gifts_friends.js

