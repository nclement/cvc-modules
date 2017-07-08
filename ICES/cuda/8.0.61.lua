help([[
  CUDA is the nVidia framework for GPU computations. This module loads in the
  base CUDA libraries, including the compilers and libraries needed for CUDA
  program compilation. It should also have installed libraries like cuFFT,
  cuBLAS, etc.
]])
whatis("Version: 8.0.61.2") -- patch level 2
whatis("Keywords: cuda, nvidia, cvc")
whatis("URL: https://developer.nvidia.com/cuda-downloads")
whatis("Description: nVidia GPU computation framework")

prepend_path( "PATH","/org/centers/cvc/software/c7/libraries/cuda-8.0.61_375.26/bin")
prepend_path( "MANPATH","/org/centers/cvc/software/c7/libraries/cuda-8.0.61_375.26/doc/man")
prepend_path( "LD_LIBRARY_PATH","/org/centers/cvc/software/c7/libraries/cuda-8.0.61_375.26/lib64")
setenv( "CUDA_BIN_PATH", "/org/centers/cvc/software/c7/libraries/cuda-8.0.61_375.26/bin")

LmodMessage("Examples can be found at /org/centers/cvc/software/c7/libraries/cuda-8.0.61_375.26/samples")
