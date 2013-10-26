Errors
******

To display all the errors in a Django form:

::

    if form.is_valid():
        ...
    else:
        logging.error('form is not valid [%s]' % form.errors)
