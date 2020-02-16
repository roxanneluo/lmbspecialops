export CUDA_HOME=/usr/local/cuda-8.0/  # 8.0 9.1 9.0# need to set to 10.0 for opencv c++, and 10.0 for pytorch, 9.0 for tensorflow
export LD_LIBRARY_PATH=${CUDA_HOME}/lib64:$LD_LIBRARY_PATH
export PATH=${CUDA_HOME}/bin:${PATH}
export PYTHONPATH="$(pwd)/python:$PYTHONPATH"
