help([[
  Anaconda Python (by Continuum) is a python that comes with everything
  and the kitchen sink. For CVC, it represents a convenient way to install
  several Python libraries (incl. TensorFlow and VisPy).

  This module corresponds to Anaconda 4.4.0.
]])
whatis("Version: 2.7.13")
whatis("Keywords: anaconda, python2, python, cvc")
whatis("URL: https://www.continuum.io/downloads")
whatis("Description: Custom Python distribution by Continuum Analytics")

family("python")

prepend_path( "PATH", "/org/centers/cvc/software/c7/programs/anaconda/py2-2.7.13/bin")
prepend_path( "MANPATH", "/org/centers/cvc/software/c7/programs/anaconda/py2-2.7.13/share/man")
prepend_path( "LD_LIBRARY_PATH", "/org/centers/cvc/software/c7/programs/anaconda/py2-2.7.13/lib")

conflict("caffe")

