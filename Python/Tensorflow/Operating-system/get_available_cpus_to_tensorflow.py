import tensorflow


# Get a list of all CPUs available to TensorFlow.
def get_available_cpus_to_tensorflow():
    return tensorflow.config.list_physical_devices("CPU")


def main():
    # Get a list of all CPUs available to TensorFlow.
    print(get_available_cpus_to_tensorflow())


main()
