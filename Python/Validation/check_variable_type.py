# Check if a given variable is a given type
def check_variable_type(provided_variable, provided_type):
  return isinstance(provided_variable, provided_type)


def main():
  # Check if a given variable is a given type
  print(check_variable_type("one", str))



main()
