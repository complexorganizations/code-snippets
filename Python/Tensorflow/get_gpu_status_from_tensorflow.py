import tensorflow



# Get the status of the GPU from tensorflow
def get_gpu_status_from_tensorflow():
    return tensorflow.test.is_gpu_available()



def main():
    # Get the status of the GPU from tensorflow
    print(get_gpu_status_from_tensorflow())



main()
