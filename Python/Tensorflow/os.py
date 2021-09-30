import tensorflow
from tensorflow.python.client import device_lib
import os


# Get a list of all local devices available to TensorFlow.
def get_available_devices():
    return device_lib.list_local_devices()


# Get a list of all CPUs available to TensorFlow.
def get_available_cpus():
    return tensorflow.config.list_physical_devices("CPU")


# Get a list of all the GPUs available to TensorFlow.
def get_available_gpus():
    return tensorflow.config.list_physical_devices("GPU")


# Choose to either enable or disable the GPU use.
def set_gpu_status(use_gpu):
    if use_gpu == True:
        os.environ["CUDA_VISIBLE_DEVICES"] = "0"
    elif use_gpu == False:
        os.environ["CUDA_VISIBLE_DEVICES"] = "-1"

def main():
    # Get a list of all the devices available to TensorFlow.
    print(get_available_devices())
    # Get a list of all the CPUs available to TensorFlow.
    print(get_available_cpus())
    # Get a list of all the GPUs available to TensorFlow.
    print(get_available_gpus())
    # Choose to either enable or disable the GPU use.
    set_gpu_status(True)


main()
