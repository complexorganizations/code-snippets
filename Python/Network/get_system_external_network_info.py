import http.client
import json


# Get the systems external network info
def get_system_external_network_info():
    conn = http.client.HTTPSConnection("api.ipengine.dev")
    conn.request("GET", "/", "", {})
    res = conn.getresponse()
    data = res.read()
    return json.loads(data.decode("utf-8"))


def main():
    # Get the systems external network info
    print(get_system_external_network_info())


main()
