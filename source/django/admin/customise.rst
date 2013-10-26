Customisation
*************

General
=======

Add options to the ``ModelAdmin`` class:

::

  class BookAdmin(admin.ModelAdmin):
      # use fields... or "exclude = ('title',)".
      fields = ('publisher', 'publication_date')
      list_display = ('title', 'publisher', 'publication_date')
      list_filter = ('publisher', 'publication_date')
      ordering = ('-publication_date',)
      search_fields = ('title',)

- The ``list_display`` option controls which columns appear in the change
  list table.  By default, the change list displays only a single column that
  contains the object's string representation.
- You will probably need to re-start the test server for the ``fields`` or
  ``exclude`` option to take effect.

Note: To display attributes of a foreign key, create a method on your model
which returns the required data e.g:

::

  class WorkingOnTicket(models.Model):
      user = models.ForeignKey(User)
      working_on = models.BooleanField()

      def working_on_user(self):
          return '%s' % self.user.username

This method (``callable``) can be added to the ``list_display`` e.g:

::

  list_display = ('working_on_user', 'working_on',)

- The ``list_filter`` option creates the filtering bar on the right side
  of the list.  You can instruct the admin interface to filter by any field,
  but foreign keys, dates, Booleans, and fields with a choices attribute work
  best.
- The ``ordering`` option controls the order in which the objects are
  presented in the admin interface.

  Note: Django will only honor the first element in the list.

- The ``search_fields`` option creates a field that allows text searches.

Inline
======

To edit squash courts on the same page as the club details:

::

  from django.contrib import admin
  from squash_club.club.models import Club
  from squash_club.club.models import Court

  class CourtInline(admin.TabularInline):
      model = Court

  class ClubAdmin(admin.ModelAdmin):
      inlines = [
          CourtInline
      ]

  admin.site.register(Club, ClubAdmin)

Media
=====

Not really sure about this, but to reference media on an admin page, I think
the URL is ``/adminmedia`` e.g:

::

  /adminmedia/img/admin/arrow-up.gif

Query Set
=========

::

  class TextKeyAdmin(admin.ModelAdmin):
      def queryset(self, request):
          qs = self.model._default_manager.get_query_set().filter(id='144')
          return qs

... or if (for example), we have a manager on the model called
``dahl_objects``:

::

  def queryset(self, request):
      return self.model.dahl_objects

(see :doc:`../model/manager`).

Note: Return the query set as the function name not as an object i.e. don't
return ``dahl_objects()``.

``SlugField``
=============

To automatically populate the ``SlugField``, see :doc:`../model/fields`,
``SlugField``.

User
====

The ``save_model`` method is given the ``HttpRequest``, a model
instance, a ``ModelForm`` instance and a boolean value based on whether it
is adding or changing the object. Here you can do any pre or post-save
operations.

For example to attach ``request.user`` to the object prior to saving:

::

  class ArticleAdmin(admin.ModelAdmin):
      def save_model(self, request, obj, form, change):
          obj.user = request.user
          obj.save()

Widget
======

::

  from django import forms

  class YourModelAdmin(admin.ModelAdmin):
      formfield_overrides = {
          models.CharField: {'widget': forms.TextInput(attrs={'size':'80'})},
          models.TextField: {'widget': forms.Textarea(attrs={'rows':4, 'cols':40})},
      }

  admin.site.register(YourModel, YourModelAdmin)
