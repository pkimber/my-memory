Mockjax
*******

.. highlight:: javascript

Links
=====

- https://github.com/appendto/jquery-mockjax
- mockjax_, Mock Your Ajax Requests with Mockjax for Rapid Development

Usage
=====

URL
---

To match GET parameters:

::

  url: '/mock/send/action?*',

Issues
======

`Keep the mocking data object intact`_
--------------------------------------

**NOTE** If making multiple requests to the same mock object with different
data, then Mockjax will not find a match.  To solve this issue, create separate
mock objects for each combination of URL and data.

Timeout
-------

To stop the 30 second timeout when a URL doesn't match:

::

  --- a/dc_common/dc_common/static/tests/jquery.mockjax.js	Thu Feb 23 10:41:50 2012 +0000
  +++ b/dc_common/dc_common/static/tests/jquery.mockjax.js	Thu Feb 23 11:02:49 2012 +0000
  @@ -358,6 +358,8 @@
   			});
   			// We don't have a mock request, trigger a normal request
   			if ( !mock ) {
  +                throw new Error('Cannot find a match for this URL');
  +                console.log(arguments);
   				return _ajax.apply($, arguments);
   			} else {
   				return mock;


.. _`Keep the mocking data object intact`: https://github.com/appendto/jquery-mockjax/issues/54
.. _mockjax: http://enterprisejquery.com/2010/07/mock-your-ajax-requests-with-mockjax-for-rapid-development/
