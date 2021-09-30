import tensorflow


# Get the current timestamp using tensorflow
def get_current_timestamp():
    return tensorflow.timestamp()


def main():
    # Get the current time
    print(get_current_timestamp())


main()
