Comments
********

Links
=====

- `XML Comments Let You Build Documentation`_ Directly From Your Visual Studio
  .NET Source Files.

GhostDoc
========

http://www.roland-weigelt.de/ghostdoc/

Download and install GhostDoc...

To assign a keyboard mapping:

- *Tools*, *Options*, then select *Environment*, *Keyboard*.
- To find the command, type "*ghost*" in the "*show commands containing*" input
  field and you'll see two commands.   Select the "*DocumentThis*" command.
- Open the "*Use new shortcut in*" drop down list and pick "*Text Editor*".

  ::

    ../../images/howto/csharp/ghostdoc-keyboard-mapping.gif

- Now choose a hotkey (I used the normal JavaDoc keys, *Shift*, *Alt*, *J*),
  and press *Assign*.

  ::

    ../../images/howto/csharp/ghostdoc-keyboard-mapping-2.gif

To create documentation for a method, move the cursor to the method and press
your hotkey.

XML Comments
============

All XML comments begin with three forward slashes (``///``). The first two
slashes signify a comment and tell the compiler to ignore the text that
follows.  The third slash tells the parser that this is an XML comment and
should be handled appropriately.

When the developer types the three forward slashes, the *Microsoft Visual
Studio* .NET IDE checks to see if it precedes an identifiable type or type
member definition.  If it is identifiable, then the *Visual Studio* .NET IDE
will automatically insert a few comment tags.

Summary
=======

::

  /// <summary>
  /// Calling this function will take the XML in <see cref="SourceXML"/>
  /// and translate it to a list of Members in the specified type.
  /// </summary>
  /// <param name="strType">The fully qualified name of the type that the member is in.</param>
  /// <returns>The HTML that lists the types that are in the XML documentation.</returns>
  /// <seealso cref="GiveTypeListHTMLHelp"/>
  /// <seealso cref="GiveMemberHTMLHelp"/>
  /// <example><code>
  /// // create the class that does translations
  /// GiveHelpTransforms ght = new GiveHelpTransforms();
  /// </code></example>
  /// <permission cref="">public</permission>
  public string GiveMemberListHTMLHelp(string strType)
  {

Code
====

The ``<c>`` tag marks a line of text as code.  It is usually used inline in
descriptive text:

::

  /// The source XML is loaded into the <see cref="SourceXML"/>
  /// property (e.g. <c><I>obj</I>.SourceXML =
  /// "<I>XML goes here</I>"</c>).

The ``<code>`` tag also defines a section of text as code.  It is often used
within an ``<example>`` tag block (as shown earlier).  The ``<code>`` tag is
similar to the ``<c>`` tag, but ``<c>`` is used for a single line of code while
``<code>`` is used for a block of code:

::

  /// <code>
  /// ght.LoadXMLFromFile("GiveHelpDoc.xml");
  /// </code>

Exceptions
==========

::

  /// <exception cref="SampleException">
  /// Normally, a discussion on any exceptions thrown would go here.
  /// </exception>

Inheritance
===========

From `Document Your Code in No Time At All with Macros in Visual Studio`_:

*...one of the greatest stumbling blocks in achieving comprehensive
documentation coverage of your code - the absence of a "documentation
inheritance" feature in Visual Studio*.

Links
=====

::

  /// Initializes a new instance of the <see cref="Helper"/> class.

::

  /// <see href="http://weezy/svn/projects/sample-app/"/>

List
====

http://www.softsteel.co.uk/tutorials/cSharp/lesson19.html

Bullet
------

::

  <list type="bullet">
    <item>
      Apple
    </item>
    <item>
      Cheese
    </item>
  </list>

...can also use a list type of "``number``".

Table
-----

::

  <list type="table">
    <listheader>
      <term>Animal</term>
      <description>Type</description>
    </listheader>
    <item>
      <term>monkey</term>
      <description>hairy</description>
    </item>
    <item>
      <term>pig</term>
      <description>bald</description>
    </item>
  </list>

Paragraph
=========

::

  /// <para>This is a new paragraph.</para>


.. _`XML Comments Let You Build Documentation`: http://msdn.microsoft.com/msdnmag/issues/02/06/XMLC/
.. _`Document Your Code in No Time At All with Macros in Visual Studio`: http://msdn.microsoft.com/msdnmag/issues/05/07/XMLComments/default.aspx

