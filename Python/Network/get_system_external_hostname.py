import http.client
import json


# Get the external hostname of the current system
def get_system_external_hostname():
    conn = http.client.HTTPSConnection("api.ipengine.dev")
    conn.request("GET", "/", "", {})
    res = conn.getresponse()
    data = res.read()
    websiteData = data.decode("utf-8")
    return json.loads(websiteData)["network"]["hostname"]


def main():
    # Get the external hostname of the current system
    print(get_system_external_hostname())


main()
