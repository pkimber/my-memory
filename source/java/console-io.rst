Console IO
**********

http://www.cs.wisc.edu/~cs302/io/JavaIO.html#consoleIN

::

  import java.io.*;  // needed for BufferedReader, InputStreamReader, etc.

      /** A Java program that demonstrates console based input and output. */
      public class MyConsoleIO
      {
          // Create a single shared BufferedReader for keyboard input
          private static BufferedReader stdin =
              new BufferedReader( new InputStreamReader( System.in ) );

          // Program execution starts here
          public static void main ( String [] args ) throws IOException
          {
              // Prompt the user
              System.out.print( "Type some data for the program: " );


              // Read a line of text from the user.
              String input = stdin.readLine();

              // Display the input back to the user.
              System.out.println( "input = " + input );

          } // end main method

      } // end MyConsoleIO class

