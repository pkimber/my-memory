Issues
******

Mozilla error: invalid scope variables
======================================

The error message, ``Mozilla error: invalid scope variables``, from within the
``evalWithinScope`` function might mean there is an issue with
``applyBindings`` where it applies to a specific part of the DOM e.g:

::

  ko.applyBindings(
      main.comms(),
      jQuery('#dc_comms')[0]
  );

