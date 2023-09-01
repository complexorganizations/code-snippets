# Get the path from a s3 URI
def get_path_from_s3_uri(s3_uri):
    return "/".join(s3_uri.split("/")[3:])


def main():
    # Get the path from a s3 URI
    print(get_path_from_s3_uri(
        "s3://dji-live-stream-feed-data-0/media/dji-stream-0//113669145637_dji-stream-0_1675350588904_b574d515-c67b-49af-8c74-48fd302bd3c0.jpg"))


main()
