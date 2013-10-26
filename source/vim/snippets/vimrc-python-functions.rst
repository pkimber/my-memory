.vimrc - python functions
*************************

cd
==

::

  " run this script with the command:
  " :py cdmm()
  python << EOF
  def cdmm():
      import vim
      folder = '~/etc/core/documents/my-memory/src/site/apt/howto/'
      vim.command('cd %s' % folder)
      vim.command('NERDTree %s' % folder)
  EOF

