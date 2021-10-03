import os

import tensorflow
from tensorflow.python.client import device_lib


# Get a list of all local devices available to TensorFlow.
def get_available_devices():
    return device_lib.list_local_devices()


# Get a list of all CPUs available to TensorFlow.
def get_available_cpus():
    return tensorflow.config.list_physical_devices("CPU")


# Get a number of all available cpus to tensorflow.
def get_number_of_cpus_to_tensorflow():
    return len(tensorflow.config.list_physical_devices("CPU"))


# Get a list of all the GPUs available to TensorFlow.
def get_available_gpus():
    return tensorflow.config.list_physical_devices("GPU")


# Get a number of all avialable gpus to tensorflow.
def get_number_of_gpus_to_tensorflow():
    return len(tensorflow.config.list_physical_devices("GPU"))


# Choose to either enable or disable the GPU use.
def set_gpu_status(use_gpu):
    if use_gpu == True:
        os.environ["CUDA_VISIBLE_DEVICES"] = "0"
    elif use_gpu == False:
        os.environ["CUDA_VISIBLE_DEVICES"] = "-1"


# Get the current tensorflow version.
def get_tf_version():
    return tensorflow.version.VERSION


# Get the current tensorflow complier version.
def get_tensoflow_compiler_version():
    return tensorflow.version.COMPILER_VERSION


# Get the current tensoflow git version.
def get_tensoflow_git_version():
    return tensorflow.version.GIT_VERSION


# Get the current tensorflow default graph min consumer.
def get_default_graph_min_consumer():
    return tensorflow.version.GRAPH_DEF_VERSION_MIN_CONSUMER


# Get the current tensorflow default graph min producer.
def get_default_graph_min_producer():
    return tensorflow.version.GRAPH_DEF_VERSION_MIN_PRODUCER


# Check if the gpus are available.
def check_gpu_status():
    return tensorflow.test.is_gpu_available()


# Check if the cuda is available.
def check_cuda_status():
    return tensorflow.test.is_built_with_cuda()


# Check if the xla is available.
def check_xla_status():
    return tensorflow.test.is_built_with_xla()


# Check if the rocm is available.
def check_rocm_status():
    return tensorflow.test.is_built_with_rocm()


def main():
    # Get a list of all the devices available to TensorFlow.
    print(get_available_devices())
    # Get a list of all the CPUs available to TensorFlow.
    print(get_available_cpus())
    # Get a number of all the CPUs available to tensorflow.
    print(get_number_of_cpus_to_tensorflow())
    # Get a list of all the GPUs available to TensorFlow.
    print(get_available_gpus())
    # Get a number of all the GPUs available to tensorflow.
    print(get_number_of_gpus_to_tensorflow())
    # Choose to either enable or disable the GPU use.
    set_gpu_status(True)
    # Get the curret tensorflow version.
    print(get_tf_version())
    # Get the current tensorflow api version.
    print(get_tensoflow_compiler_version())
    # Get the current tensorflow git version.
    print(get_tensoflow_git_version())
    # Get the current tensorflow default graph min consumer.
    print(get_default_graph_min_consumer())
    # Get the current tensorflow default graph min producer.
    print(get_default_graph_min_producer())
    # Check if the gpus are available.
    print(check_gpu_status())
    # Check if the cuda is available.
    print(check_cuda_status())
    # Check if the xla is available.
    print(check_xla_status())
    # Check if the rocm is available.
    print(check_rocm_status())


main()
