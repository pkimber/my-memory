email
*****

Send
====

Sample copied from `Email via Android Intent code snippet`_ (not tested)...

::

  public void onClick(View v)
  {
      Intent emailIntent = new Intent(android.content.Intent.ACTION_SEND);
      emailIntent.setType("text/html");
      emailIntent.putExtra(android.content.Intent.EXTRA_EMAIL,
        new String[]{ sendToAddress } );

      emailIntent.putExtra(android.content.Intent.EXTRA_SUBJECT, subject );
      emailIntent.putExtra(android.content.Intent.EXTRA_TEXT, msg );

      hideKeyboard();

      NoteToMe.this.startActivity(emailIntent);
      NoteToMe.this.finish();
  }


.. _`Email via Android Intent code snippet`: http://mgmblog.com/2009/10/11/email-via-android-intent-code-snippet/

