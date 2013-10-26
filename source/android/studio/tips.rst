Tips
****

Add a jar
=========

Right click on the project.  Select *Open Module Settings*, click *Libraries*
then the *+* button.  A file chooser window should open where you select the
``jar`` file.  Finally clean the project from the command line e.g:

::

  gradle clean

Original article copied from StackOverflow
------------------------------------------

From ar as library`_

I've been struggling with the same thing for many hours, trying to get the
Gson jar to work no less. I finally cracked it – here are the steps I took:

Put the Gson jar (in my case, ``gson-2.2.4.jar``) into the ``libs`` folder

Right click it and hit *Add as library*

Ensure that compile files(``libs/gson-2.2.4.jar``) is in your
``build.gradle`` file

Do a clean build (you can probably do this fine in Android Studio, but to
make sure I navigated in a terminal to the root folder of my app and typed
``gradlew clean``.  I'm on Mac OS X, the command might be different on your
system

After I did the above three, it started working fine. I think the
*Add as library* step was the one I'd previously missed, and it didn't work
until I cleaned it either.


.. _`Add jar as library`: http://stackoverflow.com/questions/16608135/android-studio-add-jar-as-library
