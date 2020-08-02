import csv

with open('output.txt') as f:
    reader = csv.reader(f)
    for row in reader:
        print row[1][1:]
        print row[0][ 6:11]
        print row[0][11:16]
        print row[0][16:21]
        print row[0][21:26]
        print row[0][26:31]
        print ''


