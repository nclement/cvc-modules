help([[
Caffe2 aims to provide an easy and straightforward way for you to experiment
with deep learning and leverage community contributions of new models and
algorithms. You can bring your creations to scale using the power of GPUs in
the cloud or to the masses on mobile with Caffe2's cross-platform libraries.

This package is compiled from source and used a custom conda environment to provide
the 

]])

whatis("Version: 2.0.6")
whatis("Keywords: anaconda, caffe, caffe2, neuralnet, cvc")
whatis("URL: caffe2.ai")
whatis("Description: A New Lightweight, Modular, and Scalable Deep Learning Framework")

load('anaconda/2.7.13')
load('cuda/8.0.61')
load('cudnn/6.0')

prepend_path( "LD_LIBRARY_PATH", "/org/centers/cvc/deep-learning/caffe2/install/lib")
prepend_path( "LD_LIBRARY_PATH", "/org/centers/cvc/deep-learning/caffe2/install/lib64")
prepend_path( "PYTHONPATH", "/org/centers/cvc/deep-learning/caffe2/install")
append_path( "PATH", "/org/centers/cvc/deep-learning/caffe2/install/bin")

-- This module requires a custom conda environment in order to function.
-- To avoid potential breakages, we only allow one module with custom
-- environments to function at a time.
family('custom_condaenv')

-- for safety? iunno...
prereq('anaconda/2.7.13', 'cuda/8.0.61', 'cudnn/6.0')

-- Activate or deactivate the environment based off of whether this is a 
-- load or unload

execute{cmd="source activate caffe2", modeA={"load"}}
execute{cmd="source deactivate caffe2", modeA={"unload"}}
