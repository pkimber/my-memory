Issues
******

The undo.data file gets very large - do I need it?
==================================================

You need it if you want the undo capability, the merge capability, or the
journal feature shown in the 'info' report.  But if it gets large, you can
certainly truncate it to save space, just be careful to delete lines from the
top of the file, up to and including a separator '---'. The simplest way is to
simply delete the ``undo.data`` file.  Note that it does not slow down task,
because task does not typically read it. Otherwise task only appends to the
file.

*Note*: To merge from a repository, it must contain an ``undo.data`` file, so
you can delete the old one, and just ``touch`` a new one.
