Class Based View - Delete
*************************

.. highlight:: python

Create a confirm delete template at ``app-name/model-name_confirm_delete.html``

::

  class EventDeleteView(DeleteView):
      model = Event
      success_url = reverse_lazy('whatson_calendar', args=(4,))
  
      def get_context_data(self, **kwargs):
          """
          No need to do this, but I wanted to use a 'crispy' form on the
          confirm delete template for the pretty delete button.
          """
          context = super(EventDeleteView, self).get_context_data(**kwargs)
          context.update({
              'form': EventDeleteForm(),
          })
          return context
