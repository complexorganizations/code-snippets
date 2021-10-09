import os
import tensorflow
from tensorflow.python.client import device_lib


def get_available_devices():
    """Get a list of all local devices available to TensorFlow."""
    return device_lib.list_local_devices()


def get_available_cpus():
    """Get a list of all CPUs available to TensorFlow."""
    return tensorflow.config.list_physical_devices("CPU")


def get_number_of_cpus_to_tensorflow():
    """Get a number of all available cpus to tensorflow."""
    return len(tensorflow.config.list_physical_devices("CPU"))


def get_available_gpus():
    """Get a list of all the GPUs available to TensorFlow."""
    return tensorflow.config.list_physical_devices("GPU")


def get_number_of_gpus_to_tensorflow():
    """Get a number of all avialable gpus to tensorflow."""
    return len(tensorflow.config.list_physical_devices("GPU"))


def set_gpu_status(use_gpu):
    """Choose to either enable or disable the GPU use."""
    if use_gpu == True:
        os.environ["CUDA_VISIBLE_DEVICES"] = "0"
    elif use_gpu == False:
        os.environ["CUDA_VISIBLE_DEVICES"] = "-1"


def get_tf_version():
    """Get the current tensorflow version."""
    return tensorflow.version.VERSION


def get_tensoflow_compiler_version():
    """Get the current tensorflow complier version."""
    return tensorflow.version.COMPILER_VERSION


def get_tensoflow_git_version():
    """Get the current tensoflow git version."""
    return tensorflow.version.GIT_VERSION


def get_default_graph_min_consumer():
    """Get the current tensorflow default graph min consumer."""
    return tensorflow.version.GRAPH_DEF_VERSION_MIN_CONSUMER


def get_default_graph_min_producer():
    """Get the current tensorflow default graph min producer."""
    return tensorflow.version.GRAPH_DEF_VERSION_MIN_PRODUCER


def check_gpu_status():
    """Check if the gpus are available."""
    return tensorflow.test.is_gpu_available()


def check_cuda_status():
    """Check if the cuda is available."""
    return tensorflow.test.is_built_with_cuda()


def check_xla_status():
    """Check if the xla is available."""
    return tensorflow.test.is_built_with_xla()


def check_rocm_status():
    """Check if the rocm is available."""
    return tensorflow.test.is_built_with_rocm()


def main():
    """Run the main function."""
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
