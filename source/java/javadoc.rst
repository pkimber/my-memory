JavaDoc
*******

Links
=====

- `How to Write Doc Comments for the Javadoc Tool`_
- `How to JavaDoc (efficient and maintainable) - 6 steps`_
- `JavaDoc doclet for API visualization`_.
  It generates comprehensive UML-like class and package diagrams for quick
  understanding of the overall API structure.

Code
====

**Note**: Since Java 5 you can use ``{@code}`` instead of the actual HTML code
tags - helps cut back on clutter.

::

  {@code fileName}

::

  * @return          <code>true</code> if the image is completely
  *                  loaded and was painted successfully;
  *                  <code>false</code> otherwise.

Inherit
=======

If you use the ``inheritDoc`` tag when a class is inheriting an interface the
javadocs are also inherited (also keeps CheckStyle happy):

::

  /**
   * {@inheritDoc}
   */

Line break
==========

``<p>`` and ``<br>``:

::

  /**
   * Simple function to create a repository.
   * <p>
   * - The repository must be created using this function...<br>
   * This text will start on a new line...

Link
====

`A Tip for Writing Better Javadoc`_

::

  /** Calling this method will return a {@link String} with the user's name */
  /** Used to get the cached result of {@link AbstractDocument.Content#createPosition(int) } */

The beauty of this tag is that depending on how you have your API-linking
setup during the Javadoc generation stage the behavior of ``@link`` seems to be
as follows:

- If the class referenced is accessible given the current scope of linked
  Javadoc, make the class a hyperlink over to that classes's Javadoc page.
- If the class referenced is not accessible, simply wrap it with ``code`` tags
  to make it stand out in the doc as a code artifact.

To set a label for the link:

::

  {@link AbstractDocument.Content#createPosition(int) MyLabel}

List
====

::

  * <ul>
  * <li>The Component to draw on
  * <li>The current clip
  * <li>The current color
  * </ul>

**Note**: For a numbered list, use the ``<ol>`` tag (rather than ``<ul>``).

see
===

**Note:** Almost always better to use the ``link`` tag (see above).

`@see  reference`_.

``@see package.class#member label``:

::

  * @see com.mycompany.lucene.IndexUpdate#acceptExtension

URL:

::

  * @see <a href="spec.html#section">Java Spec</a>


.. _`How to Write Doc Comments for the Javadoc Tool`: http://java.sun.com/j2se/javadoc/writingdoccomments/index.html
.. _`How to JavaDoc (efficient and maintainable) - 6 steps`: http://www.adam-bien.com/roller/abien/entry/how_to_javadoc_efficient_and
.. _`JavaDoc doclet for API visualization`: http://code.google.com/p/apiviz/
.. _`A Tip for Writing Better Javadoc`: http://www.breakitdownblog.com/2007/04/21/a-tip-for-writing-better-javadoc/
.. _`@see  reference`: http://java.sun.com/j2se/1.5.0/docs/tooldocs/windows/javadoc.html#@see

