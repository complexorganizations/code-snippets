import tensorflow



# Get the current tensoflow git version. 
def get_tensoflow_git_version():
    return tensorflow.version.GIT_VERSION



def main():
    # Get the current tensoflow git version. 
    print(get_tensoflow_git_version())


main()
