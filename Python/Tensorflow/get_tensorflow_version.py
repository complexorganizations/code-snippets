import tensorflow



# Get the current tensorflow version.
def get_tensorflow_version():
    return tensorflow.version.VERSION



def main():
    # Get the current tensorflow version.
    print(get_tensorflow_version())



main()
