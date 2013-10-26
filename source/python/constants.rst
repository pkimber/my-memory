Constants
*********

Global
======

::

  MIME_TYPE = 'svn:mime-type'

Class
=====

This seems very weird... but is the best I have for now!

::

  class connectionStringBuilder:

      PROTOCOL = 'protocol'

      def build(self, config):
          connect = self.__class__.PROTOCOL

