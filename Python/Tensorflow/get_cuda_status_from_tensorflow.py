import tensorflow


# Get the status of cuda via tensorflow
def get_cuda_status_from_tensorflow():
    return tensorflow.test.is_built_with_cuda()


def main():
    # Get the status of cuda via tensorflow
    print(get_cuda_status_from_tensorflow())


main()
