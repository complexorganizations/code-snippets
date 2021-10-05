import json


# Parse JSON and return a Python object:
def json_decode(data):
    return json.loads(data)


# Check if the json is valid and return a boolean
def is_json_valid(myjson):
    try:
        json_decode(myjson)
        return True
    except ValueError:
        return False


def main():
    # Some random json example
    validJson = '{"name":"John", "age":30, "city":"New York"}'
    invalidJson = '{"name":"John", "age":30, "city":"New York'
    # Parse the json
    jsonContent = json_decode(validJson)
    # Get the value by the key
    print(jsonContent["name"])
    print(jsonContent["age"])
    # Check if the json is valid
    print(is_json_valid(validJson))
    print(is_json_valid(invalidJson))


main()