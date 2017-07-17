help([[
  Keras is a high-level neural networks API, written in Python and capable of
  running on top of either TensorFlow, CNTK or Theano. It was developed with a
  focus on enabling fast experimentation. 

  This module uses the LMOD anaconda and activates a special environment where
  TF has already been installed. This particular module corresponds to Python
  2.7.

  Due to weirdness between the environment system of Anaconda and the LMOD system,
  this module conflicts tensorflow even though tensorflow is a dependency. This
  is solved by having the keras environment in Anaconda have its own copy of
  tensorflow, which exists separately from the libraries in the tensorflow module.

  Basically, if you need to use this, don't freak out if it asks you to unload
  tensorflow first--you'll still be able to use tensorflow upon loading this module.
]])

whatis("Version: 2.0.6")
whatis("Keywords: anaconda, tensorflow, tf, neuralnet, keras, cvc")
whatis("URL: keras.io")
whatis("Description: You have just found Keras.")

load('anaconda/3.6.1')
load('cuda/8.0.61')
load('cudnn/5.1')

-- for safety? iunno...
prereq('anaconda/3.6.1', 'cuda/8.0.61')
prereq_any('cudnn/5.1','cudnn/5.0')

-- This module requires a custom conda environment in order to function.
-- To avoid potential breakages, we only allow one module with custom
-- environments to function at a time.
family('custom_condaenv')

-- Activate or deactivate the environment based off of whether this is a 
-- load or unload

execute{cmd="source activate keras", modeA={"load"}}
execute{cmd="source deactivate keras", modeA={"unload"}}
