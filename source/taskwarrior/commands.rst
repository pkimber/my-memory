Usage
*****

`Best Practices`_

Info
====

::

  task 7 info

Modify
======

To boost a tags urgency::

  task ID modify +next

Add a tag to a couple of tasks::

  task 87,86 modify +learn

If a task depends on another task::

  task ID modify depends:OTHER_ID

Don't show the task until::

  task 12 modify wait:11months
  task 13 modify wait:22/09/2050

Workflow
========

When you start a task::

  task 12 start


.. _`Best Practices`: http://taskwarrior.org/projects/taskwarrior/wiki/Best_Practices
