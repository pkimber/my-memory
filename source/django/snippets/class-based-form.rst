Class Based Form View
*********************

.. highlight:: python

::

  class LadderAddView(CreateView):

      def form_valid(self, form):
          instance = form.save(commit=False)
          instance.author = self.request.user
          response = super(LadderAddView, self).form_valid(form)
          EditHistoryModel(
              date_created=datetime.datetime.now(),
              author=self.request.user,
              ladder=self.object,
          ).save()
          return response

::

  class LadderEditView(SchoolMarksMixin, UpdateView):

      def form_valid(self, form):
          response = super(LadderEditView, self).form_valid(form)
          try:
              history = EditHistory.objects.get(
                  author=self.request.user, ladder=self.object
              )
          except EditHistory.DoesNotExist:
              history = LadderEditHistory()
          history.date_created = datetime.datetime.now()
          history.author = self.request.user
          history.ladder = self.object
          history.save()
          return response

Old
===

From `A better pattern for Django form logic`_

::

  from django.views.generic import FormView

  from myapp.forms import MyForm

  class MyView(FormView):

      template_name = 'edit_something.html'
      form_class = MyForm
      success_url = '/success/' # you should use `reverse`, but let's stay focused.

      def form_valid(self, form):
          """
          This is what's called when the form is valid.
          """
          return HttpResponseRedirect(self.get_success_url())

      def form_invalid(self, form):
          """
          This is what's called when the form is invalid.
          """
          return self.render_to_response(self.get_context_data(form=form))


.. _`A better pattern for Django form logic`: http://stackoverflow.com/questions/5871673/a-better-pattern-for-django-form-logic
