# conda create -n DispNet python=3.5
export CUDA_HOME=/usr/local/cuda-8.0/  # 8.0 9.1 9.0# need to set to 10.0 for opencv c++, and 10.0 for pytorch, 9.0 for tensorflow
export LD_LIBRARY_PATH=${CUDA_HOME}/lib64:$LD_LIBRARY_PATH
export PATH=${CUDA_HOME}/bin:${PATH}

git checkout eccv18
pip install -r requirements.txt

# build. Need gcc 4.8
export PATH=/usr/bin:$PATH

mkdir build
cd build
cmake ..

make -j20
