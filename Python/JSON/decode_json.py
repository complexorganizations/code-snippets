import json


# Parse JSON and return a object
def json_decode(provided_json):
    return json.loads(provided_json)


def main():
    # Random JSON as example
    testJSON = '{"name":"John", "age":30, "city":"New York"}'
    # Parse JSON and return a object
    jsonContent = json_decode(testJSON)
    print(jsonContent["name"])


main()
