avconv
******

.. note: I am migrating these notes from ``ffmpeg`` to ``avconv``...

Install
=======

::

  sudo apt-get install ffmpeg

Audio
=====

MP3 to OGG
----------

Note: I am really not sure how good this method is (I didn't even listen to the
file):

Check the file format::

  ffmpeg -i beethoven-2-1-1-pfaul.mp3

Convert the file::

  ffmpeg -i beethoven-2-1-1-pfaul.mp3 -acodec vorbis -ab 192k beethoven-2-1-1-pfaul.ogg

WAV to MP3
----------

::

  avconv -i talk-2014-02-02.wav talk-2014-02-02.mp3

Video
=====

Just download Transmageddon from the software centre!!

Issues
======

See Firefox issues ref playing OGG files,
:doc:`../../../mozilla/firefox/issues`.
