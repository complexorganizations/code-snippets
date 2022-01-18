import re



# Find some content using regex.
def find_using_regex(regex, content):
    return re.findall(regex, content)



def main():
    # Find some content using regex.
    print(find_using_regex("Hello", "Hello, World!")



main()
