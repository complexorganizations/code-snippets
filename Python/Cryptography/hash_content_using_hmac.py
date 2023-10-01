import hmac
import hashlib
import codecs


# Hash a given content using hmac.
def hash_content_using_hmac(given_content, given_password):
  return hmac.new(codecs.encode(given_password), codecs.encode(given_content), hashlib.sha256).hexdigest()


def main():
    # Hash a given content using hmac
    print(hash_content_using_hmac("Hello, World!", "password"))


main()
