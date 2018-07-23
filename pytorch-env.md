 I am trying to install the Pytorch env by using conda, command is:
```
conda install pytorch cuda80 -c soumith
```
You can also install the special version pytorch
```
conda install pytorch=0.2.0 cuda80 -c soumith
```

 Here soumith is a channel where conda gets the source
 Then, to get the latest PyTorch and vision package via conda, you can simply
```
conda update pytorch torchvision
```
But there is one thing that you should NOTE: you should change the Python version from the system default one to the Annaconda one:
```
export PATH="$HOME/anaconda3/bin:$PATH"
```
 Before that you should make sure all the CUDA things are installed.

```
 nvcc -V # check the version of CUDA
 nvidia-smi #check the using situation of the GPUs
```

Testing your pytorch supports GPU or not?

```
import torch
torch.cuda.is_available()
```
The easist way to test wheather CUDA installed successed.
```
python -c 'import torch; print(torch.rand(2,3).cuda())'
```

Training with muti-GPUs:
```
CUDA_VISIBLE_DEVICES=0,1 python code.py
```


IN CONDA: https://conda.io/docs/user-guide/tasks/manage-environments.html#removing-an-environment

Check your current envoriments
```
conda info --envs
```


