import csv

with open('icons_spreadsheet.csv') as icons_spreadsheet:
    icons_spreadsheet_reader = csv.reader(icons_spreadsheet)
    for row in icons_spreadsheet_reader:
        for col in row:
            print(col)

