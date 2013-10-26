Manager
*******

.. highlight:: python

Links
=====

- Managers_

Sample
======

To add a method to the default manager class:

::

  class PollManager(models.Manager):
      def with_counts(self):
          from django.db import connection
          cursor = connection.cursor()
          cursor.execute("""
              SELECT p.id, p.question, p.poll_date, COUNT(*)
              FROM polls_opinionpoll p, polls_response r
              WHERE p.id = r.poll_id
              GROUP BY 1, 2, 3
              ORDER BY 3 DESC""")
          result_list = []
          for row in cursor.fetchall():
              p = self.model(id=row[0], question=row[1], poll_date=row[2])
              p.num_responses = row[3]
              result_list.append(p)
          return result_list

  class OpinionPoll(models.Model):
      question = models.CharField(max_length=200)
      poll_date = models.DateField()
      objects = PollManager()

  OpinionPoll.objects.with_counts()

To add a second manager to an existing class:

::

  # First, define the Manager subclass.
  class DahlBookManager(models.Manager):
      def get_query_set(self):
          return super(DahlBookManager, self).get_query_set().filter(
              author='Roald Dahl'
          )

  # Then hook it into the Book model explicitly.
  class Book(models.Model):
      title = models.CharField(max_length=100)
      author = models.CharField(max_length=50)

      objects = models.Manager() # The default manager.
      dahl_objects = DahlBookManager() # The Dahl-specific manager.

  Book.dahl_objects.all()
  Book.dahl_objects.filter(title='Matilda')
  Book.dahl_objects.count()

Note:

To access the model within the manager class:

::

  self.model()

To change the default manager (**not a good idea**):

::

  objects = DahlBookManager()

To modify the query set used by the admin interface, see
:doc:`../admin/customise`.


.. _Managers: http://docs.djangoproject.com/en/1.2/topics/db/managers/
