### POST http://162.55.220.72:5005/login

#### Парсим токен, передаем в окружение.
```
var jsonData = pm.response.json();

console.log(jsonData.token);

pm.environment.set("token",jsonData.token);
```
***

### POST http://162.55.220.72:5005/user_info

#### Создаем request (RAW JSON)

#### Task:

```
age: int
salary: int
name: str
auth_token

resp.
{'start_qa_salary':salary,
 'qa_salary_after_6_months': salary * 2,
 'qa_salary_after_12_months': salary * 2.9,
 'person': {'u_name':[user_name, salary, age],
                                'u_age':age,
                                'u_salary_1.5_year': salary * 4}
                                }
```
#### Request:

```
{
    "age": "{{age}}",
    "name": "{{name}}",
    "salary": "{{salary}}",
    "auth_token":"{{token}}"
}
```

#### Response:

```
{
    "person": {
        "u_age": 32,
        "u_name": [
            "Oleg",
            1250,
            32
        ],
        "u_salary_1_5_year": 5000
    },
    "qa_salary_after_12_months": 3625.0,
    "qa_salary_after_6_months": 2500,
    "start_qa_salary": 1250
}
```


