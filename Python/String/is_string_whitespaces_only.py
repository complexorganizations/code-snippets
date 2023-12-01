# Check if a given string is whitespaces only.
def is_string_whitespaces_only(content):
  return len(content.strip()) == 0


def main():
  # Check if the given string is whitespaces only.
  print(is_string_whitespaces_only("  "))


main()
