import tensorflow


# Get a number of all avialable gpus to tensorflow.
def get_number_of_gpus_to_tensorflow():
    return len(tensorflow.config.list_physical_devices("GPU"))


def main():
    # Get a number of all avialable gpus to tensorflow.
    print(get_number_of_gpus_to_tensorflow())


main()
