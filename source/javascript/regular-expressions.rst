Regular Expressions
*******************

See http://www.webreference.com/js/column5/define.html.

One way to define a regular expression is to simply assign it to a variable:

::

  var varName = /PATTERN/[g|i|gi];

Here's an example:

::

  var child = /(Bart|Lisa|Maggie) Simpson/i;

If you plan to use the regular expression only once, you can hand it in its
literal form (/.../) to the desired method.

Note that the modifier (/g, /i, or /gi) is not required.

RegExp
======

Another way to create a regular expression is to define it as an instance of
the global RegExp object:

::

  var varName = new RegExp("PATTERN", ["g"|"i"|"gi"]);

Once again, the modifiers are optional. Now, take a look at the same regular
expression defined in another fashion:

::

  var child = new RegExp("(Bart|Lisa|Maggie) Simpson", "i");

Notice that the regular expression and the modifier(s) are enclose in quotes
rather than forward-slashes.

You should use the first syntax (literal notation) when you know the search
string ahead of time, because literal notation provides compilation of the
regular expression only once, when the script is first loaded. Use the other
syntax (the constructor function) when the search string is changing
frequently, or is unknown, such as strings taken from user input.

The RegExp() constructor function provides runtime compilation of the regular
expression.  That is, the pattern is compiled just before use, or when the
compile() method is invoked.

Modifiers
=========

http://www.webreference.com/js/column5/modifiers.html

=============  ===========================================
**Modifier**   **Description**
=============  ===========================================
``g``          Do global pattern matching.
``i``          Do case-insensitive pattern matching.
=============  ===========================================

Methods
-------

http://javascript.about.com/library/blre22.htm

The ``test(string)`` method tests if the regular expression pattern matches the
string that is passed in and returns true or false.

