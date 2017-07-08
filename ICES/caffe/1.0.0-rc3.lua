help([[
  Caffe is a deep learning framework made with expression, speed, 
  and modularity in mind. It is developed by Berkeley AI Research 
  (BAIR) and by community contributors. Yangqing Jia created the 
  project during his PhD at UC Berkeley.

  An example of how to run something on Caffe can be found at
  /org/centers/cvc/software/c7/deep-learning/START_HERE

  Note: this module currently conflicts with Anaconda due to stupid
  versioning issues. If you find you need to use both modules simultaneously,
  ask either Louis or Kevin for a hotfix. If they've both left the lab,
  you are on your own.
]])
whatis("Version: 1.0.0-rc3")
whatis("Keywords: caffe, vision, neuralnetwork, cvc")
whatis("URL: http://caffe.berkeleyvision.org/")
whatis("Description: Machine Learning ")

prepend_path( "PATH", "/org/centers/cvc/software/c7/deep-learning/anaconda/bin")
append_path( "PATH", "/org/centers/cvc/software/c7/deep-learning/caffe/bin")
append_path( "PATH", "/org/centers/cvc/software/c7/deep-learning/caffe/tools")
append_path( "PYTHONPATH", "/org/centers/cvc/software/c7/deep-learning/caffe/pycaffe" )

conflict("anaconda")

LmodMessage("Caffe was compiled for use on neothalamus. It may work on other")
LmodMessage("systems with nVidia cards and CUDA, but this is not guaranteed.")
