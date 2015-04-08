Swap
****

From `How do I tell what process is causing kswapd to be in use?`_:

  ``kswapd`` is managing swap space in response to memory demands greater than
  physically available for all processes.

  It is process agnostic, it is only interested in what pages are access and
  when (it is more complex than this of course but to keep things simple we may
  as well view it this way).

  So the real question is "what processes have the greatest burden on memory
  that are causing kswapd to need to page all the time".

  That is most easily answered using ``top`` and switching to memory usage sort
  mode.

From `How to find out which processes are swapping in linux?`_, (I am not sure
if this is useful, but):

- Run ``top``
- use the ``f`` key to see the fields
- use the arrow keys to go to ``SWAP``
- use ``d`` to toggle display
- use ``s`` to set the sort
- then ``q``


.. _`How do I tell what process is causing kswapd to be in use?`: http://serverfault.com/questions/316560/how-do-i-tell-what-process-is-causing-kswapd-to-be-in-use
.. _`How to find out which processes are swapping in linux?`: http://stackoverflow.com/questions/479953/how-to-find-out-which-processes-are-swapping-in-linux
