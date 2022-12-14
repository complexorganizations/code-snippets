import tensorflow


# Get the current timestamp using tensorflow.
def get_current_timestamp_from_tensorflow():
    return tensorflow.timestamp()


def main():
    # Print the current time using tensorflow
    print(get_current_timestamp_from_tensorflow())


main()
