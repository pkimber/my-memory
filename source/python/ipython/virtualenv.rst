virtualenv
**********

To use ipython within a virtual environment, add the following to
``~/.bash_aliases``:

::

  alias ipython="python -c 'import IPython; IPython.Shell.IPShell().mainloop()'"
