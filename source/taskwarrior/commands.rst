Usage
*****

`Best Practices`_

Dependencies
============

::

  task blocked
  task blocking

  task ID modify depends:OTHER_ID

Info
====

::

  task 7 info

List
====

::

  task status:completed all

Modify
======

Annotation (note)::

  task 14 annotate Cheese and Bacon

To boost a tags urgency::

  task ID modify +next

Add a tag to a couple of tasks::

  task 87,86 modify +learn

If a task depends on another task::

  task ID modify depends:OTHER_ID

Don't show the task until::

  task 12 modify wait:11months
  task 13 modify wait:22/09/2050

Report
======

From `Printing report output`_::

  task long rc.detection:off rc.defaultwidth:184 > out.txt

Search
======

Case sensitive search::

  task list /Cross/

User Defined Attributes (UDA)
=============================

::

  # 'estimate' of type 'numeric'
  task config uda.estimate.type numeric

  # 'url' of type 'string'
  task config uda.url.type string

Workflow
========

When you start a task::

  task 12 start


.. _`Best Practices`: http://taskwarrior.org/projects/taskwarrior/wiki/Best_Practices
.. _`Printing report output`: https://answers.tasktools.org/questions/4489386/printing-report-output
