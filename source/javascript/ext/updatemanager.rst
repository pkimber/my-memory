UpdateManager
*************

- Ext.UpdateManager_

Sample
======

::

  <div id="msg" style="visibility: hidden"></div>
  Name: <input type="text" id="name" /><br />
  <input type="button" id="okButton" value="OK" />

::

    Ext.get('okButton').on('click', function(){
      var msg = Ext.get('msg');
      msg.load({
        url: 'http://localhost:8080/j2ee-simple-servlet/resources/helloworld',
        text: 'Updating...'
      });
      msg.show();
    });

Issues
======

Errors
------

When you try to load a page with UpdateManager that doesn't exist or returns an
error, the loading indicator will show forever.

The `original sample`_ includes parameters in the call to ``msg.load()``

::

  msg.load({
    url: [server url], // <-- replace with your url
    params: 'name=' + Ext.get('name').dom.value,
    text: 'Updating...'
  });

As we can see from `this forum post`_ if you pass ``params`` to ``load`` it
does an HTTP ``POST``; otherwise it does a ``GET``.

I used :doc:`../../linux/curl` to do a ``POST`` on this URL and it returned an
*HTTP Status 405* error...

Here are a couple of forum discussions:

- `Suggestion for UpdateManager.processFailure`_
- `UpdateManager Failure Event`_


.. _Ext.UpdateManager: http://extjs.com/deploy/ext/docs/output/Ext.UpdateManager.html
.. _`original sample`: http://extjs.com/learn/Tutorial:Introduction_to_Ext#Using_Ajax
.. _`this forum post`: http://extjs.com/forum/showthread.php?t=7849
.. _`Suggestion for UpdateManager.processFailure`: http://extjs.com/forum/showthread.php?t=7360
.. _`UpdateManager Failure Event`: http://extjs.com/forum/showthread.php?t=2036

