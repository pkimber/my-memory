Tips
****

Transparent Background
======================

From `How to make a transparent background`_ /selection on an image using GIMP

Open your image.

Select the area you want to make transparent.

Select the appropriate selection tool from the Tool window or the Tools -
Selection Tools menu on the Layer window.  I usually use the magic wand/fuzzy
select (select contiguous region) tool or the Select regions by color tool.

Click in the region you want selected.  Use shift-click to add more
regions/colors.

Tip: It's easier if you zoom in (*View* - *Zoom* menu) to see finer details of
exactly what you're selecting.

In the Layer window (the one showing your image), select Layer - Transparency
- Add Alpha Channel.  If this is blanked out then it's already done.  This
makes sure your image can store transparency data.  Select Edit - Clear.  This
makes the selection transparent.

Save the file

Note: If you save it as a PNG file, be sure to select the 'Save colour values
from transparent pixels' option in the Save as PNG dialog box.

And that's it.

NOTE: IE does not support showing PNG transparencies (alpha channels) natively.
There are a few work arounds for this (theres loads to be found on google) -
here's MS's solution.  However, personally, I find the simplest approach is to
save the image as a GIF (which all major browers support transparencies for).

When saving your image as a GIF from within Gimp, it will prompt you to export
it - you can select either Indexed or Greyscale - however, on the next screen
(Save as GIF) be sure to check the 'Interlace' option.


.. _`How to make a transparent background`: http://geekswithblogs.net/TimH/archive/2006/03/20/72797.aspx
