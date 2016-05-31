Outlook
*******

Conversations
=============

`Make Outlook thread conversations like Gmail`_::

  To mimic Gmail's threads we need a way for Outlook to group by subject, but
  ignore the FW: and RE:. Luckily, it has just such a feature.  It's called
  Conversation, and it's an optional column just like date received and
  subject.  In your Inbox, go to the pane that lists your emails. Right-click
  any of the field headings, like From, or Subject, and select Field Chooser.
  You ll get a list of additional fields that pertain to your emails.  Click
  and drag Conversation to the other field headings.  You'll notice it looks
  just like subject, but ignores FW: and RE:.

Message Headers
===============

`How to View Email Headers`_:

Right click on the message in your inbox and choose "*Message Options*".

Out of Office
=============

`Cool Trick: Making Miniature Calendars`_

PST
===

For use when migrating from Outlook to Google Mail, :doc:`../google/gmail`.

Highlight the ``Inbox`` you want to use, File, Import and Export, Export to a
file, Personal Folder File (.pst), Include subfolders, Filter (if required)
(received last month), Replace duplicates with items exported.

RSS Feeds
=========

If you do not want to use Outlook 2007's RSS Feed Reader feature, you should
remove it.  It slows down Outlook:

- Open Outlook 2007
- Click the Tools menu
- Click Options
- Select the Other tab
- Click the Advanced Options button
- Uncheck Sync RSS feeds to the Common Feed List
- Click OK X 2

If you want to remove the RSS subscriptions from Outlook, you may wish to do this
following:

- Click Tools menu and then Options again.
- Select the poorly named Mail Setup tab
- Click the Data Files button
- Click the RSS Feeds tab
- Click the first feed and scroll down to the bottom of the feed list
- Hold the SHIFT key and click the last feed. All feeds should now be selected.
- Click the Remove button
- Confirm you want them all deleted.
  Now we'll need to delete the old feed content as well...
- Expand the RSS Feed folder under Personal Folders
- Select each feed and press Delete. You'll have to confirm the delete.
- Repeat ad nauseum until all are gone.

Signatures
==========

*Tools*, *Options*, *Mail Format*, *Signatures*...

Edit
----

In Outlook 2007, email signatures are stored at this location:

::

  [root]\Users\[username]\AppData\Roaming\Microsoft\Signatures

**Note**:

- This is a hidden folder... so you will not see it in the standard explorer
  view.
- If you've created a signature, particularly one with graphical content, you
  may wish to edit the ``html`` version of your signature by simply navigating
  to the folder location above and editing the ``[yoursignature].htm`` file.

Sound
=====

To switch off sound notifications:

*Tools*, *Options*, *Preferences*, *E-mail Options*, *Advanced E-mail Options*.

Untick *Play a sound* in the section, *When new items arrive in my inbox*.

Voting
======

Create a new email, click on the *Options* button in the toolbar, tick *Use
voting buttons* and enter a ``;`` separated list of options.


.. _`Make Outlook thread conversations like Gmail`: http://lifehacker.com/157042/make-outlook-thread-conversations-like-gmail
.. _`How to View Email Headers`: http://128.175.24.251/headers.htm
.. _`Cool Trick: Making Miniature Calendars`: http://blogs.msdn.com/outlook/archive/2008/12/15/making-miniature-calendars.aspx
