Background
==========

Existing
--------

To put an existing command into the background:

- Press *Ctrl* ``Z`` to pause the process.
- Set the task to run in the background:

  ::

    bg

  Note: Consider using :doc:`screen` if you want the process to last
  longer than your current session.

New
---

Run any command in the background (the symbol ``&`` means *run the
preceding command in the background*). The ``job_number`` is printed on the
screen so you can bring the command in the foreground (see below) if you
want.

::

  any_command &

List my background or stopped processes and show their job numbers.

::

  jobs

Bring a background or stopped process to the foreground.

::

  fg job_number

Place a process in the background, so it is exactly as if it had been
started with ``&``. This will restart a stopped background process.
The current foreground process can often be stopped with z.

::

  bg job_number

If you have stopped or background jobs, you have to type exit twice in row
to log out.

