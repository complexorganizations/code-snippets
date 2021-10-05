import xml


# Check if the xml string is valid
def is_xml_valid(xml_string):
    try:
        # Parse the xml string
        return True
    except xml.parsers.expat.ExpatError:
        return False


def main():
    sample_xml = "<note><to>Tove</to><from>Jani</from><heading>Reminder</heading><body>Don't forget me this weekend!</body></note>"
    # Check if the xml is valid
    print(is_xml_valid(sample_xml))


main()
