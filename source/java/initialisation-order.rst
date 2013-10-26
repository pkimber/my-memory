Order of Initialisation
***********************

Statics
=======

From http://www.codeguru.com/java/tij/tij0072.shtml

The point of first use is also where the static initialization takes place.
All the static objects and the static code block will be initialized **in
textual order** (that is, the order that you write them down in the class
definition) at the point of loading. The statics, of course, are initialized
only once.

