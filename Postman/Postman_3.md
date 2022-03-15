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

###  Проверить статус код 200

```
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});
```

### Проверка структуры json в ответе.

```
var schema = {
	"definitions": {},
	"$schema": "http://json-schema.org/draft-07/schema#", 
	"$id": "https://example.com/object1646764458.json", 
	"title": "Root", 
	"type": "object",
	"required": [
		"person",
		"qa_salary_after_12_months",
		"qa_salary_after_6_months",
		"start_qa_salary"
	],
	"properties": {
		"person": {
			"$id": "#root/person", 
			"title": "Person", 
			"type": "object",
			"required": [
				"u_age",
				"u_name",
				"u_salary_1_5_year"
			],
			"properties": {
				"u_age": {
					"$id": "#root/person/u_age", 
					"title": "U_age", 
					"type": "integer",
					"examples": [
						32
					],
					"default": 0
				},
				"u_name": {
					"$id": "#root/person/u_name", 
					"title": "U_name", 
					"type": "array",
					"default": []
				},
				"u_salary_1_5_year": {
					"$id": "#root/person/u_salary_1_5_year", 
					"title": "U_salary_1_5_year", 
					"type": "integer",
					"examples": [
						5000
					],
					"default": 0
				}
			}
		}
,
		"qa_salary_after_12_months": {
			"$id": "#root/qa_salary_after_12_months", 
			"title": "Qa_salary_after_12_months", 
			"type": "integer",
			"examples": [
				3625
			],
			"default": 0
		},
		"qa_salary_after_6_months": {
			"$id": "#root/qa_salary_after_6_months", 
			"title": "Qa_salary_after_6_months", 
			"type": "integer",
			"examples": [
				2500
			],
			"default": 0
		},
		"start_qa_salary": {
			"$id": "#root/start_qa_salary", 
			"title": "Start_qa_salary", 
			"type": "integer",
			"examples": [
				1250
			],
			"default": 0
		}
	}
};

pm.test('Schema is valid', function () {
    pm.response.to.have.jsonSchema(schema);
});
```
***
#### В ответе указаны коэффициенты умножения salary, напишите тесты по проверке правильности результата перемножения на коэффициент.
