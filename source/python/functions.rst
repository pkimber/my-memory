functions
*********

Parameters
==========

Sample
------

- `Advanced Parameter Handling For Functions`_

  ::

    def process(*params):
        for i in params:
            print i

  To pass a list or tuple to this function, use the ``*`` operator e.g:

  ::

    process(*(4,5,6,))

- `Why Python Rocks III: Parameter expansion`_

  ::

    def address(name, first_line, post_code):
        print '\nThe address is:\n%s\n%s\n%s\n' % (name, first_line, post_code)

  To pass a dictionary to this function, use the ``**`` operator e.g:

  ::

    data = {
        'name': 'Patrick',
        'first_line': 'Moorview',
        'post_code': 'AB17 6DC',
    }

    address(**data)


.. _`Advanced Parameter Handling For Functions`: http://www.linuxtopia.org/online_books/programming_books/python_programming/python_ch15s09.html
.. _`Why Python Rocks III: Parameter expansion`: http://www.electricmonk.nl/log/2008/07/25/why-python-rocks-iii-parameter-expansion/
