import tensorflow


# Get a number of all available cpus to tensorflow.
def get_number_of_cpus_to_tensorflow():
    return len(tensorflow.config.list_physical_devices("CPU"))


def main():
    # Get a number of all available cpus to tensorflow.
    print(get_number_of_cpus_to_tensorflow())


main()
