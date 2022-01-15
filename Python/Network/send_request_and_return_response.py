import http.client


# Send a request and return the response.
def send_request_and_return_response(hostname, path, payload, headers, method, encoding):
    connection = http.client.HTTPSConnection(hostname)
    connection.request(method, path, payload, headers)
    response = connection.getresponse()
    data = response.read()
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
    print(send_request_and_return_response(
        hostname, path, payload, headers, method, encoding))


main()
