import validators


# Check if a given email is valid
def is_email_valid(email):
    return validators.email(email)


def main():
    # Check if a given email is valid
    print(is_email_valid("example@example.com"))


main()
