import tensorflow



# Check if the xla is available.
def get_xla_status_from_tensorflow():
    return tensorflow.test.is_built_with_xla()



def main():
    # Check the status of xla
    print(get_xla_status_from_tensorflow())



main()
