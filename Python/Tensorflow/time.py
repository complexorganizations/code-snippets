import tensorflow


def get_current_timestamp_from_tensorflow():
    """Get the current timestamp using tensorflow."""
    return tensorflow.timestamp()


def main():
    """Run the main function."""
    # Print the current time using tensorflow
    print(get_current_timestamp_from_tensorflow())


main()
