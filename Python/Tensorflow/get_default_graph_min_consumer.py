import tensorflow



# Get the current tensorflow default graph min consumer.
def get_default_graph_min_consumer():
    return tensorflow.version.GRAPH_DEF_VERSION_MIN_CONSUMER



def main():
    # Get the current tensorflow default graph min consumer.
    print(get_default_graph_min_consumer())



main()
