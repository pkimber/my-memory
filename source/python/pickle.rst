pickle
******

Sample
======

Simple:

::

  import pickle
  f = open('temp.out', 'wb')
  pickle.dump(c, f)
  f.close()
  f = open('temp.out', 'rb')
  c = pickle.load(f)
  f.close()

A more involved sample:

::

  import pickle

  parametersFileName = 'wrapper.parameters'
  if os.path.exists(parametersFileName):
      # Load the parameters from the parameters file.
      file = open(parametersFileName, 'rb')
      parameters = pickle.load(file)
      file.close()
  else:
      parameters = wrapperParameters()

  # Do some work on the parameters object...

  # Save the parameters.
  file = open(parametersFileName, 'wb')
  pickle.dump(parameters, file)
  file.close()

