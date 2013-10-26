ffmpeg
******

**Apparently we should now be using** ``avconv`` (but I couldn't get it to
work)...

::

  sudo apt-get install ffmpeg

Audio
=====

MP3 to OGG
----------

Note: I am really not sure how good this method is (I didn't even listen to the
file):

Check the file format:

::

  ffmpeg -i beethoven-2-1-1-pfaul.mp3

Convert the file:

::

  ffmpeg -i beethoven-2-1-1-pfaul.mp3 -acodec vorbis -ab 192k beethoven-2-1-1-pfaul.ogg

Video
=====

Just download Transmageddon from the software centre!!

Issues
======

See Firefox issues ref playing OGG files, :doc:`../mozilla/firefox/issues`.
