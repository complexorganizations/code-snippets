import json


# Check if a JSON is valid
def json_validation(provided_json):
    try:
        json.decoder.JSONDecoder().decode(provided_json)
        return True
    except ValueError:
        return False


def main():
    # Random JSON as example
    testJSON = '{"name":"John", "age":30, "city":"New York"}'
    # Check if the provided json is valid
    print(json_validation(testJSON))


main()
