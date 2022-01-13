import os



# Move a file from a old path to a new path.
def move_file_from_old_to_new_path(old_path, new_path):
    os.rename(old_path, new_path)


def main():
    # Move a file from a old path to a new path.
    move_file_from_old_to_new_path("assets/valid/valid-txt.txt", "assets/valid/valid.txt")



main()
