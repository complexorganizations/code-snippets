import http.client


# Send a request and return the response.
def send_request_and_return_response(hostname, path, payload, headers, method, encoding):
    conn = http.client.HTTPSConnection(hostname)
    conn.request(method, path, payload, headers)
    res = conn.getresponse()
    data = res.read()
    returnData = data.decode(encoding)
    return returnData


def main():
    # Send a request and return the response.
    hostname = "api.ipengine.dev"
    path = "/"
    method = "GET"
    payload = ""
    encoding = "utf-8"
    headers = {}
    print(send_request_and_return_response(hostname, path, payload, headers, method, encoding))


main()
