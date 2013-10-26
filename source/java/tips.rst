Tips
****

Just in Time Programming
========================

::

  > -----Original Message-----
  > [mailto:extremeprogramming@yahoogroups.com] On Behalf Of martijn_meijering
  > Sent: Thursday, May 04, 2006 1:13 PM
  > Subject: [XP] Re: Hatred of index cards
  >
  > I remember reading something Kent Beck wrote about what he called just
  > in time programming: not writing a method until you get an error
  > message in the debugger, then writing the method and continue where
  > you left off. That does sound very interesting to me. That was
  > Smalltalk of course, and I mostly work in C++. MSVC Edit and continue
  > should do something similar but less powerful, but I've never got it
  > to work in real life cases.

     From: "Kent Beck" kentb@earthlink.net
     Date: Fri May 5, 2006 8:55am(PDT)
  Subject: Re: Hatred of index cards

  I've recently started programming in Smalltalk again, and this technique is
  extremely powerful. The general principle involved is to defer decisions as
  long as is responsible. In general, it's responsible to defer writing the
  body of a method until it appears in a debugger. In Java, I have to build
  stubs at compile time. I can get close to Smalltalk's behavior in Eclipse by
  changing the method template (Window>>Preferences>>Java>>Code Style>>Code
  Templates>>Code>>Method body) to throw an UnsupportedOperationException and
  add a breakpoint on UnsupportedOperationException. Then, when I write a
  test, generate the stubs, and run the test I end up in a debugger on the
  method stub.

  Sincerely yours,

  Kent Beck
  Three Rivers Institute

Windows
=======

http://jroller.com/page/m_ravi?entry=how_to_switch_between_1

I have been developing with the 1.4.2_07 JDK on my office laptop.  I recently
started exploring XAMPP at home which needs 1.5.0 JDK. Now I thought it was
easy to switch between the two versions and tried this out.

::

  JAVA_HOME_1_4 = C:\j2sdk1.4.2_07
  JAVA_HOME_1_5 = C:\Program Files\Java\jdk1.5.0_02
  JAVA_HOME = %JAVA_HOME_1_4%

Well, Its not working. It always points to 1.5.0 JDK (this was my latest
install w.r.t JDKs), may be it has something to do with registry. Has anyone
tried it on XP?

*On Windows also notice that each JDK/JRE installation changes the files
java.exe and javaw.exe in the Windows directory to point to the installation
performed last.*

*I usually delete them from the Windows directory completely, because they only
cause confusion.  This of course means that you have to either change your PATH
environment variable or type the full path wherever you want to call one of
them. But at least that lets you be sure about which version is used.*

09/06/2007 17:56  Just found ``java.exe`` and ``javaw.exe`` in:

::

  \windows\system32\

