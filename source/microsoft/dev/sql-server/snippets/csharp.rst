C#
**

Stored Procedure
================

Tony wrote this code to do a bulk load using a stored procedure:

::

  using System;
  using System.Collections.Generic;
  using System.Linq;
  using System.Text;
  using System.IO;
  using System.Data;
  using System.Data.SqlClient;

  namespace InsertCodes
  {
      class Program
      {
          static void Main(string[] args)
          {
              string fPath = Environment.CurrentDirectory;
              string fExt = "*.txt";
              string fConn = "";
              string fTable = "";
              int fMax = 1;
              int fProcessed = 0;

              foreach (string arg in args)
              {
                  if (arg == "/?")
                  {
                      Showusage();
                      Environment.Exit(0);
                  }

                  else if (arg.ToLower().StartsWith("/max:"))
                  {
                      fMax = int.Parse(arg.Substring(5));
                      //break;
                  }

                  else if (arg.ToLower().StartsWith("/path:"))
                  {
                      string newpath = arg.Substring(6);
                      fPath = newpath.Replace("\"", "");
                      //break;
                  }
                  else if (arg.ToLower().StartsWith("/conn:"))
                  {
                      string newpath = arg.Substring(6);
                      fConn = newpath.Replace("\"", "");
                      //break;
                  }
                  else if (arg.ToLower().StartsWith("/table:"))
                  {
                      string newpath = arg.Substring(7);
                      fTable = newpath.Replace("\"", "");
                      //break;
                  }
                  else if (arg.ToLower().StartsWith("/filetype:"))
                  {
                      fExt = "*." + arg.Substring(10);
                      //break;
                  }
                  else
                  {
                      Console.WriteLine("Error - Unrecognised Parameter: " + arg);
                      Showusage();
                      Environment.Exit(-1);
                  }
              }

              if (fConn.Length < 1)
              {
                  Console.WriteLine("ERROR: Must specify connection string");
                  Showusage();
                  Environment.Exit(-1);
              }

              Console.WriteLine("");
              Console.WriteLine("");


              SqlConnection mySqlConnection = new SqlConnection(fConn);
              SqlCommand mySqlCommand;


              string[] AllFiles = Directory.GetFiles(fPath, fExt, SearchOption.TopDirectoryOnly);

              if (AllFiles.Length > 0)
              {
                  if (!Directory.Exists(fPath + @"\processed")) Directory.CreateDirectory(fPath + @"\processed");
                  mySqlConnection.Open();

                  if (mySqlConnection.State != ConnectionState.Open)
                  {
                      Console.WriteLine("Error connecting to SQL Database");
                      Environment.Exit(-1);
                  }
                  else
                  {
                      Console.WriteLine("Connected to SQL ...");
                  }

                  mySqlCommand = new SqlCommand();
                  mySqlCommand.Connection = mySqlConnection;
                  mySqlCommand.CommandType = CommandType.StoredProcedure;
                  mySqlCommand.CommandText = "bulk_code_insert";
                  mySqlCommand.Parameters.Add("@PathFileName", SqlDbType.VarChar);


                  if (fMax == 0) fMax = AllFiles.Length;

                  foreach (string filename in AllFiles)
                  {

                      fProcessed++;

                      if (fProcessed > fMax) break;

                      Console.WriteLine("Processing file: " + filename);

                      mySqlCommand.Parameters["@PathFileName"].Value = filename;

                      if (mySqlCommand.ExecuteNonQuery() > 0)
                      {
                          File.Move(filename, fPath + @"\processed" + filename.Substring(filename.LastIndexOf(@"\")));
                      }


                  }

                  mySqlCommand.Dispose();
                  if (mySqlConnection != null)
                  {
                      if (mySqlConnection.State == ConnectionState.Open)
                      {
                          mySqlConnection.Close();
                      }
                      mySqlConnection.Dispose();
                  }
              }
          }


          private static void Showusage()
          {
              Console.WriteLine("Usage: incode.exe [ /path:{\"path\"} /filetype:{extension} /max:{Max emails to process} ]");
              Console.WriteLine();
              Console.WriteLine(@"  /conn        SQL connection string");
              Console.WriteLine(@"  /table       Name of table to BULK INSERT to");
              Console.WriteLine(@"  /path        Full path of the folder to process (uses current working directory if not specified)");
              Console.WriteLine(@"  /filetype    Extension of files to process (default is txt)");
              Console.WriteLine(@"  /max         Maximum number of email files to process (default is 1, 0 for unlimited)");
              Console.WriteLine();
              Console.WriteLine(@"Example:   incode.exe /filetype:txt /max:20");
          }
      }
  }

...the batch file to run this application:

::

  F:\InsertCodes.exe /path:"F:\codes-split-into-chunks" /max:5 /table:codes /filetype:txt /conn:"Server=SQL.our-company;Database=codes;user ID=sa;password=my-password"

