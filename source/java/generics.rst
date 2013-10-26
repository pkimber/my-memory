Generics
********

Links
=====

- `Lesson: Generics`_

Type Parameter Naming Conventions
=================================

By convention, type parameter names are single, uppercase letters.

The most commonly used type parameter names are:

===========  ====================  ============================================
E            Element               (used by the Java Collections Framework)
K            Key                  
N            Number               
T            Type                 
V            Value                
S,U,V etc.   2nd, 3rd, 4th types  
===========  ====================  ============================================

Warnings
========

If you override methods in classes which are designed to work with Java before
version 1.4, you can suppress compiler warnings with the ``SuppressWarnings``
annotation:

::

  @SuppressWarnings("unchecked")
  protected void handleDirectoryEnd(File directory, int depth,
          Collection results) throws IOException {


.. _`Lesson: Generics`: http://java.sun.com/docs/books/tutorial/java/generics/

