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
    dic = {argv[1]: [{'task': i['title'], 'completed': i['completed'],
                      'username': employee['username']} for i in todo_list]}
    with open('{}.json'.format(argv[1]), 'w') as f:
        json.dump(dic, f)
