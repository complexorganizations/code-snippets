import json


# Parse JSON and return a object
def decode_json(provided_json):
    return json.loads(provided_json)


def main():
    # Random JSON as example
    testJSON = '{"name":"John", "age":30, "city":"New York"}'
    # Parse JSON and return a object
    jsonContent = decode_json(testJSON)
    print(jsonContent["name"])


main()
