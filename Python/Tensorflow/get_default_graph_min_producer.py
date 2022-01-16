import tensorflow



# Get the current tensorflow default graph min producer.
def get_default_graph_min_producer():
    return tensorflow.version.GRAPH_DEF_VERSION_MIN_PRODUCER

  
  
def main():
    # Get the current tensorflow default graph min producer.
    print(get_default_graph_min_producer())



main()
