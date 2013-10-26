Commons CLI
***********

Links
=====

- http://jakarta.apache.org/commons/cli/
- sample-commons-cli_ - sample code.

Alternatives
------------

- `JSAP: the Java-based Simple Argument Parser`_
- `JSAP provides simple but powerful command-line parsing functionality for Java applications`_.

Maven
=====

::

  <dependency>
    <groupId>commons-cli</groupId>
    <artifactId>commons-cli</artifactId>
    <version>1.0</version>
  </dependency>

Options
=======

I created a ``getOptions()`` method.  This sample code creates two types of
*Option*:

- The *help* and *create* options are simple boolean values, they are either
  specified on the command line (or not).
- The *file* option has an associated value (a key/value pair).

  ::

    private static final String OPTION_CREATE = "create";
    private static final String OPTION_FILE = "file";
    private static final String OPTION_HELP = "help";

    private static Options getOptions() {
        Option create = new Option(OPTION_CREATE, "create a new repository.");
        Option help = new Option(OPTION_HELP, "print this message");
        Option file = OptionBuilder.withArgName(OPTION_FILE)
            .hasArg()
            .withDescription("add this document to the repository.")
            .create(OPTION_FILE);

        Options options = new Options();
        options.addOption(help);
        options.addOption(create);
        options.addOption(file);
        return options;
    }

These options are used by the command line parser:

::

  try {
      CommandLineParser parser = new GnuParser();
      CommandLine commandLine = parser.parse(getOptions(), args);
      ...
  } catch (ParseException e) {
      System.err.println("Parsing failed.  Reason: " + e.getMessage());
  }

The command line can be checked to see which options have been set (note the
``getOptionValue()`` method which returns the value of the file name):

::

  if (commandLine.hasOption(OPTION_HELP)) {
     ...
  }
  if (commandLine.hasOption(OPTION_CREATE)) {
      ...
  }
  if (commandLine.hasOption(OPTION_FILE)) {
      String fileName = commandLine.getOptionValue(OPTION_FILE);
      ...
  }

You can display help for the command line parameters (this code uses the
``getOptions()`` method which I created above):

::

  new HelpFormatter().printHelp(MyClass.class.getName(), getOptions());


.. _sample-commons-cli: http://toybox/hg/sample/file/tip/java/sample-commons-cli/src/test/java/com/sample/FileInfoTest.java
.. _`JSAP: the Java-based Simple Argument Parser`: http://www.martiansoftware.com/jsap/
.. _`JSAP provides simple but powerful command-line parsing functionality for Java applications`: http://sourceforge.net/projects/jsap

