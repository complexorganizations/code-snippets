from tensorflow.python.client import device_lib



# Get a list of all local devices available to TensorFlow.
def get_available_devices_to_tensorflow():
    return device_lib.list_local_devices()



def main():
    # Get a list of all local devices available to TensorFlow.
    print(get_available_devices_to_tensorflow())



main()
