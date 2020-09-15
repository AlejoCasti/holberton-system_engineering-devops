#!/usr/bin/python3
''' get info from API '''


if __name__ == '__main__':
    ''' get conection to API '''
    import json
    import requests

    r = requests.get('https://jsonplaceholder.typicode.com/users')
    employees = r.json()
    re = requests.get('https://jsonplaceholder.typicode.com/todos')
    lista = re.json()
    dic = dict()
    for j in employees:
        todo_list = [i for i in lista if i['userId'] == int(j['id'])]
        dic[j['id']] = [{'username': j['username'], 'task': i['title'],
                         'completed': i['completed']} for i in todo_list]
    with open('todo_all_employees.json', 'w') as f:
        json.dump(dic, f)
