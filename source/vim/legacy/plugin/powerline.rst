Powerline
*********

.. highlight:: bash

Fonts
=====

https://github.com/powerline/fonts

From `Patched font installation`_::

  cd ~/repo/src/
  git clone git@github.com:powerline/fonts.git

On Ubuntu, you can install the fonts to your local ``.fonts`` folder::

  ls ~/.fonts/

To install a font e.g. ``UbuntuMono``::

  cp -r ~/repo/src/fonts/UbuntuMono ~/.fonts/
  fc-cache -vf ~/.fonts/

Select the new font in your terminal e.g. ``Ubuntu Mono derivative Powerline``.


.. _`Patched font installation`: https://powerline.readthedocs.org/en/latest/installation/linux.html#patched-font-installation
