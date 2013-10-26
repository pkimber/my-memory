Images
******

.. highlight:: java

Documentation
=============

`ImageView - JavaDoc`_

Component
---------

`Android ImageLoader - load images sequentially in the background`_

Learning
--------

`Loading images from a remote server`_

Animation
=========

For simple cross-fades between two simple bitmaps (from
`DevBytes: CrossFading Animations`_):

::
  
  BitmapDrawable drawables[] = new BitmapDrawable[2];
  drawables[0] = new BitmapDrawable(getResources(), bitmap0);
  drawables[1] = new BitmapDrawable(getResources(), bitmap1);

  // The cross-fade effect happens by fading one out and the other in.
  final TransitionDrawable crossfader = new TransitionDrawable(drawables);
  imageview.setImageDrawable(crossfader);

  imageview.setOnClickListener(new View.OnClickListener() {

      @Override
      public void onClick(View v) {
          if (mCurrentDrawable == 0) {
              crossfader.startTransition(500);
              mCurrentDrawable = 1;
          } else {
              crossfader.reverseTransition(500);
              mCurrentDrawable = 0;
          }
      }
  });

Sample
======

::

  imageView.setImageResource(R.drawable.pencils);


.. _`Android ImageLoader - load images sequentially in the background`: http://wu-media.com/2009/06/android-imageloader-load-images-sequencially-in-the-background/
.. _`DevBytes: CrossFading Animations`: https://www.youtube.com/watch?v=atH3o2uh_94
.. _`ImageView - JavaDoc`: http://developer.android.com/reference/android/widget/ImageView.html
.. _`Loading images from a remote server`: http://en.androidwiki.com/wiki/Loading_images_from_a_remote_server
