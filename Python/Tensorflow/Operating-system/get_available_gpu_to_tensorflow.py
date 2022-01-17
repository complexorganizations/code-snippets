import tensorflow


# Get a list of all the GPUs available to TensorFlow.
def get_available_gpu_to_tensorflow():
    return tensorflow.config.list_physical_devices("GPU")


def main():
    # Get a list of all the GPUs available to TensorFlow.
    print(get_available_gpu_to_tensorflow())


main()
