import requests



# Check if a given url is accessible.
def is_url_online(provided_url):
  return requests.get(provided_url).status_code == 200


def main():
  # Check if a given url is online.
  print(is_url_online("https://www.example.com"))



main()
