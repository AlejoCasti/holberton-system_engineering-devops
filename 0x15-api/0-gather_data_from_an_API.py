#!/usr/bin/python3
''' get info from API '''


if __name__ == '__main__':
    ''' get conection to API '''
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
    print('Employee {} is done with tasks({}/{}):'
          .format(employee['name'], len(todo), len(todo_list)))
    for i in todo:
        print('\t {}'.format(i['title']))
