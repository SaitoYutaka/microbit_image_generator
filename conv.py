import csv

comment = ''
data = ''
with open('images.txt') as f:
    reader = csv.reader(f)
    for row in reader:
        if row != []:
            if row[0][0] == '/':
                comment = ', ' + row[0]
            else:
                data = data + row[0]
        else:
            print '    0b' + data + comment
            comment = ''
            data = ''

