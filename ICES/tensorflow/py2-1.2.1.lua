help([[
  TensorFlow™ is an open source software library for numerical computation using data flow graphs.

  This module uses the LMOD anaconda and activates a special environment where TF has already been
  installed. This particular module corresponds to Python 2.7.
]])
whatis("Version: 1.2.1")
whatis("Keywords: anaconda, tensorflow, tf, neuralnet, cvc")
whatis("URL: https://www.tensorflow.org/")
whatis("Description: The deep learning library from Google")

load('anaconda/2.7.13')
load('cuda/8.0.61')
load('cudnn/5.1')


-- for safety? iunno...
prereq('anaconda/2.7.13', 'cuda/8.0.61')
prereq_any('cudnn/5.1','cudnn/5.0')

-- This module requires a custom conda environment in order to function.
-- To avoid potential breakages, we only allow one module with custom
-- environments to function at a time.
family('custom_condaenv')

-- Activate or deactivate the environment based off of whether this is a 
-- load or unload

execute{cmd="source activate tensorflow", modeA={"load"}}
execute{cmd="source deactivate tensorflow", modeA={"unload"}}
