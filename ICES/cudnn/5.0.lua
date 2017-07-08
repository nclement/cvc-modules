help([[
  The NVIDIA CUDA® Deep Neural Network library (cuDNN) is a GPU-accelerated 
  library of primitives for deep neural networks. cuDNN provides highly tuned 
  implementations for standard routines such as forward and backward convolution,
  pooling, normalization, and activation layers.

]])
whatis("Version: 5.0")
whatis("Keywords: cuda, cudnn, cvc")
whatis("URL: https://developer.nvidia.com/cudnn")
whatis("Description: Acceleration library for deep neural networks")

load("cuda/8.0")

prepend_path( "LD_LIBRARY_PATH", "/org/centers/cvc/software/c7/libraries/cudnn/cuda-8.0/cudnn-5.0/lib64")
