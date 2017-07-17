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

-- We know for a fact that this compiled Caffe2 only works on neo. Check to
-- make sure the hostname matches and error otherwise. (see end of file for detail)

hostname = capture("hostname")
correcthostname = "neothalamus.ices.utexas.edu\n"
if hostname ~= correcthostname and mode() == "load" then
    LmodError([[

================================
=== [ERROR]: WRONG COMPUTER ====
================================

  This compiled version of Caffe2 is *known* to only work on the system it was
  compiled on (neothalamus). Trying to run it on any other system will cause
  even simple operations like ReLU to fail with NaNs.
  Please log in to neothalamus and use this module from there.
]], "\n  The hostname I detected was: ",hostname,
    "\n  The hostname I was expecting was: ", correcthostname)
else
  if mode() == "load" then
  LmodMessage("Detected host neothalamus. Loading module...")
  end
end


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

--[[
-- This version of Caffe was compiled on neothalamus and can only be run there
-- Running it on other systems (even ones equipped with Quadros, like Sputnik),
-- results not in straight-up crashes, but numerical nonsense.
--
-- If you want to see this for yourself, delete the hostname checks and load the
-- module. Then run
--
--    python -m caffe2.python.operator_test.relu_op_test
--
-- You should find that the ReLU of a simple 4-entry vector is mostly NaNs, with
-- some almost-plausible results sprinkled in. This is *not* what you want to
-- have happening to you when you try to get started with deep learning.
--
--]]
