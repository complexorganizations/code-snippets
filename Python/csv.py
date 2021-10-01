import csv


# Check if the csv string is valid
def is_valid_csv(csv_string):
    try:
        csv.reader(csv_string)
        return True
    except csv.Error:
        return False


# Get the amount of rows in the csv string
def get_row_count(csv_string):
    return len(csv_string.splitlines())


def main():
    csv_string = "seq,name/first,name/last,age,street,city,state,zip,dollar,pick,date1,Elva,Kelly,30,EltoPlace,Rezoca,ND,71971,$8909.53,RED,12/07/1992"
    # Check if the csv string is valid
    print(is_valid_csv(csv_string))
    # Get the amount of rows in the csv string
    print(get_row_count(csv_string))


main()
