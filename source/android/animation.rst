Animation
*********

hlight:: java

Links
-----

- Transition drawable, :doc:`images`

Object Animation
================

`DevBytes: Property Animations`_ new animation system since 3.0:

For source code see the video:

::

  Animator anim = AnimatorInflater.loadAnimator(PropertyAnimations.this, animationID);
  anim.setTarget(v);
  anim.start();

::

  <set xmlns:android="http://schemas.android.com/apk/res/android">
    <objectAnimator
        android:propertyName="scaleX"
        android:repeatCount="1"
        android:repeatMode="reverse"
        android:duration="300"
        android:valueTo="2"/>
    <objectAnimator
        android:propertyName="scaleY"
        android:repeatCount="1"
        android:repeatMode="reverse"
        android:duration="300"
        android:valueTo="2"/>
  </set>

Window Animations
=================

From `DevBytes: Window Animations`_, for Window animations use the older *View
Animation* API.

- Translate animation
- Scale animation (with the current API, we cannot scale back)

Sample
------

Download source code from  `DevBytes: Window Animations`_

Slide the next activity in as we slide this activity out:

::

  Intent subActivity = new Intent(WindowAnimations.this,
          AnimatedSubActivity.class);
  // The enter/exit animations for the two activities are specified by xml resources
  Bundle translateBundle =
          ActivityOptions.makeCustomAnimation(WindowAnimations.this,
          R.anim.slide_in_left, R.anim.slide_out_left).toBundle();
  startActivity(subActivity, translateBundle);

Scale up the new activity from a given bitmap, cross-fading between the
starting and ending representations

::
  
  BitmapDrawable drawable = (BitmapDrawable) thumbnail.getDrawable();
  Bitmap bm = drawable.getBitmap();
  Intent subActivity = new Intent(WindowAnimations.this, AnimatedSubActivity.class);
  Bundle scaleBundle = ActivityOptions.makeThumbnailScaleUpAnimation(
          thumbnail, bm, 0, 0).toBundle();
  startActivity(subActivity, scaleBundle);


.. _`DevBytes: Property Animations`: https://www.youtube.com/watch?v=3UbJhmkeSig
.. _`DevBytes: Window Animations`: https://www.youtube.com/watch?v=Ho8vk61lVIU
