import math


# truncate the number to the nearest integer
def truncate_number_to_nearest_int(primary):
    return math.trunc(primary)


def main():
    # truncate the number to the nearest integer
    print(truncate_number_to_nearest_int(1.5))


main()
