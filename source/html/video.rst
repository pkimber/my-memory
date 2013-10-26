Video
*****

Links
=====

- `Video for Everybody!`_
- `Pocket guide to HTML5 and Video`_

Sample
======

::

  <video width="640" height="360" poster="__POSTER__.JPG" controls>
      <source src="__VIDEO__.MP4" type="video/mp4"></source>
      <source src="__VIDEO__.OGV" type="video/ogg"></source>
      <object width="640" height="384" type="application/x-shockwave-flash"
          data="__FLASH__.SWF?image=__POSTER__.JPG&amp;file=__VIDEO__.MP4">
          <param name="movie" value="__FLASH__.SWF?image=__POSTER__.JPG&amp;file=__VIDEO__.MP4" />
          <img src="__POSTER__.JPG" width="640" height="360" alt="__TITLE__"
               title="No video playback capabilities, please download the video below" />
      </object>
  </video>
  <p>Download Video:
      <a href="__VIDEO__.MP4">Apple iTunes "MP4"</a> |
      <a href="__VIDEO__.OGV">Open Format "OGG"</a>
  </p>


Note: Update the following tags: ``__VIDEO__``, ``__FLASH__``, ``__POSTER__``
and ``__TITLE__``.


.. _`Video for Everybody!`: http://camendesign.com/code/video_for_everybody
.. _`Pocket guide to HTML5 and Video`: http://www.ilovecolors.com.ar/html5-video/

