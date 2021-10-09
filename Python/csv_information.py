import csv


def is_csv_valid(csv_string):
    """Check if the csv is valid."""
    try:
        csv.reader(csv_string)
        return True
    except csv.Error:
        return False


def get_csv_rows(csv_string):
    """Get the amount of rows in the csv."""
    return len(csv_string.splitlines())


def main():
    """Run the main function."""
    csv_string = "seq,name/first,name/last,age,street,city,state,zip,dollar,pick,date1,Elva,Kelly,30,EltoPlace,Rezoca,ND,71971,$8909.53,RED,12/07/1992"
    # Check if the csv string is valid
    print(is_csv_valid(csv_string))
    # Get the amount of rows in the csv
    print(get_csv_rows(csv_string))


main()
