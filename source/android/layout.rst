Layout
******

LayoutParams
============

Layout parameters include some fields which you can use directly
e.g: ``weight`` and ``gravity``:

::

  final TextView textView = new TextView(this);
  final LayoutParams params = new LayoutParams(LayoutParams.FILL_PARENT,
          LayoutParams.WRAP_CONTENT);
  params.weight = 1;
  // params.gravity = Gravity.CENTER;
  textView.setLayoutParams(params);

