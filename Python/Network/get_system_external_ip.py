import http.client
import json


# Get the external IP of the current system
def get_system_external_ip():
    conn = http.client.HTTPSConnection("api.ipengine.dev")
    conn.request("GET", "/", "", {})
    res = conn.getresponse()
    data = res.read()
    websiteData = data.decode("utf-8")
    return json.loads(websiteData)["network"]["ip"]


def main():
    # Get the external IP of the current system
    print(get_system_external_ip())


main()
