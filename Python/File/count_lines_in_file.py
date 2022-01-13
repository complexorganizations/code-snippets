import os



# Count how many lines are in a file.
def count_lines_in_file(system_path):
    return len(open(system_path).readlines())


def main():
    # Count how many lines are in a file.
    print(count_lines_in_file("assets/valid/valid-json.json"))


main()
