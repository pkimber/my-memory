Patterns
********

Feature Branches
================

See `Subversion Book, Common Branching Patterns, Feature Branches`_

*...there's the issue of how to best keep a feature branch in "sync" with the
trunk as work progresses.  As we mentioned earlier, there's a great risk to
working on a branch for weeks or months; trunk changes may continue to pour in,
to the point where the two lines of development differ so greatly that it may
become a nightmare trying to merge the branch back to the trunk*.

*This situation is best avoided by regularly merging trunk changes to the
branch...*

*At some point, you'll be ready to merge the "synchronized" feature branch back
to the trunk.  To do this, begin by doing a final merge of the latest trunk
changes to the branch.  When that's done, the latest versions of branch and
trunk will be absolutely identical except for your branch changes.  So in this
special case, you would merge by comparing the branch with the trunk*:

::

  cd trunk-working-copy
  svn update
  svn merge http://svn.example.com/repos/calc/trunk@1910 http://svn.example.com/repos/calc/branches/mybranch@1910

*By comparing the HEAD revision of the trunk with the HEAD revision of the
branch, you're defining a delta that describes only the changes you made to the
branch; both lines of development already have all of the trunk changes*.

**Note**: Instructions for using Tortoise SVN can be found in the help file in
section 5.17.2. Merging Two Different Trees.


.. _`Subversion Book, Common Branching Patterns, Feature Branches`: http://svnbook.red-bean.com/en/1.2/svn.branchmerge.commonuses.html#svn.branchmerge.commonuses.patterns.feature

