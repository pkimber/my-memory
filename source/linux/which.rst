which
*****

For each of its arguments it prints to stdout the full path of the executables
that would have been executed when this argument had been entered at the shell
prompt. It does this by searching for an executable or script in the
directories listed in the environment variable PATH using the same algorithm
as bash(1).  e.g:

::

  which java

Also try ``type`` and ``whereis``...

