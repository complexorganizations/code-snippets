# Check if a given slice cointains duplicates.
def check_duplicates_in_slice(givenSlice):
    check = {}
    for content in givenSlice:
        if check.get(content):
            return True
        check[content] = True
    return False


def main():
    # Check if the given slice cointains duplicates.
    print(check_duplicates_in_slice(["a", "a", "b", "c"]))


main()
