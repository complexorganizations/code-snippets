# Example of a switch statment
def switch_function(argument):
    match argument:
        case 1:
            print("1")
        case 2:
            print("2")
        case 3:
            print("3")


# Another switch function
def another_switch(argument):
    match argument:
        case 1:
            print("1")
        case 2:
            print("2")
        case 3:
            print("3")


def main():
    # Example of a switch statment
    switch_function(1)
    # Another switch function
    another_switch(2)


main()
