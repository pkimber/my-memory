Workflow
********

**Note**:  Really, really should use ``gitflow`` or perhaps ``github-flow``:

- Git-Flow

  - http://codesherpas.com/screencasts/on_the_path_gitflow.mov
    A movie - On the path with Git-Flow.
  - http://nvie.com/posts/a-successful-git-branching-model/
  - https://github.com/nvie/gitflow
  - http://jeffkreeftmeijer.com/2010/why-arent-you-using-git-flow/

- `GitHub Flow, Issues with git-flow`_

Test
====

`In praise of git's index`_.

To stash the changes you see using ``git diff``, but not the ones you have
staged (will leave the code on disk exactly the same as the index).

Use this just before you commit, to run your tests::

  git stash --keep-index

After testing (and committing), you apply the stashed changes back into the
working copy using::

  git stash pop

... continue where you left off.


.. _`In praise of git's index`: http://plasmasturm.org/log/gitidxpraise/
.. _`GitHub Flow, Issues with git-flow`: http://scottchacon.com/2011/08/31/github-flow.html
