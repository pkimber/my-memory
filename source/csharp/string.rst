String
******

`What's the difference between string and System.String?`_

*C# defines a number of aliases for CLR types.  They may be used
interchangably, and even mixed together, e.g:*

::

  string x = new System.String(' ', 5);.

`What is the difference between using "String" and "string"`_ ("Object" vs
"object" etc.)?  *both are exactly equivalent, so pick the one you like best
and stick with it*.

StringBuilder
=============

::

  System.Text.StringBuilder sb = new System.Text.StringBuilder();
  sb.Append("  ");
  sb.Append(s);
  writer.WriteLine(sb.ToString());


.. _`What's the difference between string and System.String?`: http://blogs.msdn.com/csharpfaq/archive/2004/03/12/88418.aspx
.. _`What is the difference between using "String" and "string"`: http://www.sellsbrothers.com/askthewonk/Secure/Whatisthedifferencebetwee.htm

