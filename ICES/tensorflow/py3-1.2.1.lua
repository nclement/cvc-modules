help([[
  TensorFlow™ is an open source software library for numerical computation using data flow graphs.

  This module uses the LMOD anaconda and activates a special environment where TF has already been
  installed. This particular module corresponds to Python 3.6.
]])
whatis("Version: 1.2.1")
whatis("Keywords: anaconda, tensorflow, tf, neuralnet, cvc")
whatis("URL: https://www.tensorflow.org/")
whatis("Description: The deep learning library from Google")

load('anaconda/3.6.1')
load('cuda/8.0.61')
load('cudnn/5.1')

prereq('anaconda/3.6.1', 'cuda/8.0.61')
prereq_any('cudnn/5.1','cudnn/5.0')

-- Activate or deactivate the environment based off of whether this is a 
-- load or unload

execute{cmd="source activate tensorflow", modeA={"load"}}
execute{cmd="source deactivate tensorflow", modeA={"unload"}}
