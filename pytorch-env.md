 I am trying to install the Pytorch env by using conda, command is:
'''
conda install pytorch=0.2.0 cuda80 -c soumith
'''
 Here soumith is a channel where conda gets the source

 But before that you should make sure all the CUDA things are installed.
 nvcc -V # check the version of CUDA
 nvidia-smi #check the using situation of the GPUs
