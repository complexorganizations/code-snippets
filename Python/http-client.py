import http.client


def get_response(hostname, path, payload, headers, method, encoding):
    conn = http.client.HTTPSConnection(hostname)
    conn.request(method, path, payload, headers)
    res = conn.getresponse()
    data = res.read()
    returnData = data.decode(encoding)
    return returnData


def main():
    hostname = "api.ipengine.dev"
    path = "/"
    method = "GET"
    payload = ""
    encoding = "utf-8"
    headers = {}
    print(get_response(hostname, path, payload, headers, method, encoding))


main()
