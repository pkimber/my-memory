Eclipse
*******

Links
=====

http://labs.jboss.com/tools/

Install
=======

Note: Requires version 3.2.1 of Eclipse:

- Downloaded from http://www.exadel.com/web/portal/download/esp35
-  Unzip the file.  I un-zipped to:

  ::

    C:\tools\ExadelStudioPro-4.0.4a\

- Create a text file called ``com.exadel.studio.link`` in the ``links`` folder
  within the Eclipse home folder.
- The content of the file should be point to the place where you unzipped
  Exadel Studio:

  ::

    path=/tools/ExadelStudioPro-4.0.4a

  **Note**:

  - Always use forward slashes.
  - For more information on link files see Eclipse - Plugin - Link Files,
    :doc:`../eclipse/plugin-link-files`.

- Start Eclipse with ``-clean`` option:

::

  eclipse -clean





