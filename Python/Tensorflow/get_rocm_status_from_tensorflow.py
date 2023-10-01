import tensorflow


# Get the status of rocm from tensorflow.
def get_rocm_status_from_tensorflow():
    return tensorflow.test.is_built_with_rocm()


def main():
    # Get the status of rocm from tensorflow.
    print(get_rocm_status_from_tensorflow())


main()
