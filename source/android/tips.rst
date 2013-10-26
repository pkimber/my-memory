Tips
****

From `Activity and Task Design`_

Applications
============

Allow your activities to be added to the current task
-----------------------------------------------------

For this behavior, your activity should have a launch mode of ``standard`` or
``singleTop`` rather than ``singleTask`` or ``singleInstance``.  These modes
also enable multiple instances of your activity to be run.

Main
----

To launch your main activity from an icon at *Home*, the activity needs to have
an intent filter with action ``MAIN`` and category ``LAUNCHER``).

Intents
=======

Can I use this Intent?
----------------------

`Can I use this Intent?`_

Filter
------

When writing an activity that won't be re-used, don't specify intent filters
- use explicit intents:

If you're writing an activity that you don't want other activities to use, be
sure not to add any intent filters to that activity.  This applies to an
activity that will be launched only from the application launcher or from other
activities inside your application.  Instead, just create intents specifying
the explicit component to launch - that is, explicit intents.  In this case,
there's just no need for intent filters.  Intent filters are published to all
other applications, so if you make an intent filter, what you're doing is
publishing access to your activity, which means you can cause unintentional
security holes.

Re-use
------

When reusing an activity owned by others, handle the case where no activity
matches...

`Can I use this Intent?`_

Notifications
=============

Use the notification system - don't use dialog boxes in place of notifications:
If your background service needs to notify a user, use the standard
notification system - don't use a dialog or toast to notify them.

Layout
======

If you are having trouble with a component consider wrapping it in a layout.
I used this technique to help me apply animations to an image view control.


.. _`Activity and Task Design`: http://developer.android.com/guide/practices/ui_guidelines/activity_task_design.html
.. _`Can I use this Intent?`: http://android-developers.blogspot.com/2009/01/can-i-use-this-intent.html
.. _`Can I use this Intent?`: http://android-developers.blogspot.com/2009/01/can-i-use-this-intent.html
