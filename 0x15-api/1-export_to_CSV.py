#!/usr/bin/python3
''' get info from API '''


if __name__ == '__main__':
    ''' get conection to API '''
    import csv
    import json
    import requests
    from sys import argv

    r = requests.get('https://jsonplaceholder.typicode.com/users/{}'
                     .format(argv[1]))
    employee = json.loads(r.text)
    r = requests.get('https://jsonplaceholder.typicode.com/todos')
    lista = json.loads(r.text)
    todo_list = [i for i in lista if i['userId'] == int(argv[1])]
    todo = [i for i in todo_list if i['completed']]

    with open('{}.csv'.format(argv[1]), 'w', newline='') as f:
        writer = csv.writer(f, delimiter=',', quotechar='"',
                            quoting=csv.QUOTE_ALL)
        for row in todo_list:
            writer.writerow([argv[1], employee['username'],
                             row['completed'], row['title']])
