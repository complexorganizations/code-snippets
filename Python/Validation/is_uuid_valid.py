import validators


# Check if a given uuid is valid.
def is_uuid_valid(provided_uuid):
    return validators.uuid(provided_uuid)


def main():
    # Check if a given uuid is valid.
    print(is_uuid_valid("00000000-0000-0000-0000-000000000000"))

main()