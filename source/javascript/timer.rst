Timer
*****

``setTimeout``
==============

The ``setTimeout`` method returns a value.  If you want to cancel the
``setTimeout`` function, you can refer to it using the variable name.

The first parameter of ``setTimeout`` can be a string of executable code, or a
call to a function.

The second parameter indicates how many milliseconds from now you want to
execute the first parameter.  Note: There are 1000 milliseconds in one second.

Sample
------

::

  function updateData() {
      console.log('do something useful...');
      setTimeout(updateData, 2000);
  }

