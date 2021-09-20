import http.client

def main():
    conn = http.client.HTTPSConnection("api.ipengine.dev")
    payload = ""
    headers = {}
    conn.request("GET", "/", payload, headers)
    res = conn.getresponse()
    data = res.read()
    print(data.decode("utf-8"))

main()
