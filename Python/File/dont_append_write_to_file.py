# Dont append and write some content to a file.
def dont_append_write_to_file(system_path, content):
    file = open(system_path, "w")
    file.write(content)
    file.close()


def main():
    # Dont append and write some content to a file.
    dont_append_write_to_file(
        "assets/remove/zVA3m3BEJ5wSe45v93Fi8788z4GoKjnW/tEU29kAcG8m5C4y268tmJFH35", "Hello, World!")


main()
