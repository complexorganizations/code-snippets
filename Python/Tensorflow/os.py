import os
import tensorflow
from tensorflow.python.client import device_lib


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


def main():
    # Get a list of all the devices available to TensorFlow.
    print(get_available_devices())
    # Get a list of all the CPUs available to TensorFlow.
    print(get_available_cpus())
    # Get a list of all the GPUs available to TensorFlow.
    print(get_available_gpus())
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


main()
