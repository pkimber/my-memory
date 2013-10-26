NUnit - Issues
**************

Reason: Fixture class is not public
===================================

This message was displayed in the GUI and everything was yellow.  Tried various
things to solve the problem and I don't know which one fixed it.

- Make sure your class is public i.e. ``public class``.
- Make sure your class has a default public constructor e.g.
  ``public EncryptDataTest() {}``.

- Make sure your assembly is using the same version of the .NET Framework as
  NUnit.  My project was using version 3.5 and NUnit was set-up for version 2.
- Make sure you are using the correct build of your project i.e. *Release* or
  *Debug*.  I kept changing things and compiling - I was running the unit tests
  on the *Debug* assembly when I was building the *Release* assembly.
