help([[
  Anaconda Python (by Continuum) is a python that comes with everything
  and the kitchen sink. For CVC, it represents a convenient way to install
  several Python libraries (incl. TensorFlow and VisPy).

  This module corresponds to Anaconda 4.4.0.
]])
whatis("Version: 3.6.1")
whatis("Keywords: anaconda, python3, python, cvc")
whatis("URL: https://www.continuum.io/downloads")
whatis("Description: Custom Python distribution by Continuum Analytics")

-- Only allow one active python environment at a time for safety reasons
family("python") --LMOD only allows one module from a given family at once

prepend_path( "PATH", "/org/centers/cvc/software/c7/programs/anaconda/py3-3.6.1/bin")
prepend_path( "MANPATH", "/org/centers/cvc/software/c7/programs/anaconda/py3-3.6.1/share/man")
prepend_path( "LD_LIBRARY_PATH", "/org/centers/cvc/software/c7/programs/anaconda/py3-3.6.1/lib")

conflict("caffe")

