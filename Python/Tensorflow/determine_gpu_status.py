import os



# Choose to either enable or disable the GPU use.
def determine_gpu_status(enable_or_disable_gpu):
    if enable_or_disable_gpu == True:
        os.environ["CUDA_VISIBLE_DEVICES"] = "0"
    elif enable_or_disable_gpu == False:
        os.environ["CUDA_VISIBLE_DEVICES"] = "-1"



def main():
    # Choose the status of the GPU.
    determine_gpu_status(True)



main()
