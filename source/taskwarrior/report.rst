Reports
*******

.. highlight:: bash

From https://taskwarrior.org/docs/report.html

Here is my custom ``pk`` report::

  task config report.pk.description 'Tasks for patrick'
  task config report.pk.columns 'id,start.age,entry.age,depends,priority,project,ticket,tags,recur,scheduled.countdown,due.relative,until.remaining,description,urgency'
  task config report.pk.labels 'ID,Active,Age,Deps,P,Project,Ticket,Tag,Recur,S,Due,Until,Description,Urg'
  task config report.pk.sort 'urgency-'
  task config report.pk.filter 'status:pending username:patrick.kimber limit:page'

.. note:: ``username`` and ``ticket`` are two of our custom fields
          See https://github.com/pkimber/tasksync

To see available columns::

  task _columns

To see the available formts for a column e.g. ``description``::

  task columns description

Combine the column name and format with the ``.`` separator e.g::

  description.oneline

To see available reports::

  task reports

To see the ``config`` for an existing report e.g. ``next``::

  task show report.next
