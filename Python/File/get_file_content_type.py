import mimetypes


# Get the content type of a file.
def get_file_content_type(system_path):
    return mimetypes.guess_type(system_path)


def main():
    # Get the content type of a file.
    print(get_file_content_type("assets/valid/valid-json.json"))


main()
