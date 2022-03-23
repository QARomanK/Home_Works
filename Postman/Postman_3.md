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
    "$schema": "http://json-schema.org/draft-04/schema#",
     "type":"object",
     "properties":{
         "person":{
             "type":"object",
             "title":"person",
             "properties": {
                 "u_age": {
                 "type":"number",
                 "title":"u_age"
                 },
                 "u_name":{
                     "type":"array",
                     "title":"u_name",
                     "items":[
                         {"type":"string"},
                         {"type":"number"},
                         {"type":"number"}
                     ]
                     },
                    "u_salary_1_5_year":{
                        "type":"number",
                        "title":"u_salary_1_5_year"
                        }
                    },
                 "required": [
                        "u_age",
                        "u_name",
                        "u_salary_1_5_year"
                    ]
             },
             "qa_salary_after_12_months":{
                 "type":"number",
                 "title":"qa_salary_after_12_months"
             },
             "qa_salary_after_6_months":{
                 "type":"number",
                 "title":"qa_salary_after_6_months"
             },
             "start_qa_salary":{
                 "type":"number",
                 "title":"start_qa_salary"
             }
         },
           "required": [
                "person",
                "qa_salary_after_12_months",
                "qa_salary_after_6_months",
                "start_qa_salary"
            ]
     }

var jsonData = pm.response.json();

pm.test('Schema is valid', function () {
    pm.expect(tv4.validate(jsonData, schema,true,true)).to.be.true;
});
```

### В ответе указаны коэффициенты умножения salary, напишите тесты по проверке правильности результата перемножения на коэффициент.
```
var req = JSON.parse(request.data);
var sal = +req.salary 

pm.test("Test qa_salary_after_6_months * 2", function () {
    pm.expect(jsonData.qa_salary_after_6_months).to.eql(sal*2);
});

pm.test("Test qa_salary_after_12_months * 2.9", function () {
    pm.expect(jsonData.qa_salary_after_12_months).to.eql(sal*2.9);
});

pm.test("Test u_salary_1.5_year * 4", function () {
    pm.expect(jsonData.person.u_salary_1_5_year).to.eql(sal * 4);
});
```

### Достать значение из поля 'u_salary_1.5_year' и передать в поле salary запроса http://162.55.220.72:5005/get_test_user 

```
pm.environment.set("u_salary_1_5_year", jsonData.person.u_salary_1_5_year);
```
***

### POST http://162.55.220.72:5005/new_data

### Request

```
age: int
salary: int
name: str
auth_token
```

### Response

```
{'name':name,
  'age': int(age),
  'salary': [salary, str(salary*2), str(salary*3)]}
```

### Статус код 200

```
 pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});
```

### Проверка структуры json в ответе.

```
var schema = {
  "$schema": "http://json-schema.org/draft-04/schema#",
  "type": "object",
  "properties": {
    "name": {
      "type": "string",
        },
          "age":{
            "type":"number"
          },
            "salary":{
              "type":"array",
              "items":[
                {"type":"number"},
                {"type":"string"},
                {"type":"string"}
              ]
            }
    },
      "required":[
        "name",
        "age",
        "salary"
      ]
}

var jsonData = pm.response.json();

pm.test('Schema is valid', function() {
    pm.expect(tv4.validate(jsonData,schema,true,true)).to.be.true;
});
```

### В ответе указаны коэффициенты умножения salary, напишите тесты по проверке правильности результата перемножения на коэффициент

```
var req = request.data;
var sal = +req.salary;

pm.test('Test salary*2', function() {
    pm.expect(+jsonData.salary[1]).to.eql(sal*2)
});

pm.test('Test salary*3', function() {
    pm.expect(+jsonData.salary[2]).to.eql(sal*3)
});
```

### Проверить, что 2-й элемент массива salary больше 1-го и 0-го

```
pm.test('Test compare items (2>1)', function() {
    pm.expect(+jsonData.salary[2]).to.above(+jsonData.salary[1])
});

pm.test('Test compare items(2>0)', function() {
    pm.expect(+jsonData.salary[2]).to.above(jsonData.salary[0])
});
```
***

### POST http://162.55.220.72:5005/test_pet_info

### Статус код 200
```
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});
```

### Проверка структуры json в ответе.

```
var schema = {
  "type":"object",
    "properties":{
      "name":{
        "type":"string"
      },
        "age":{
          "type":"number"
        },
          "daily_food":{
            "type":"number"
          },
            "daily_sleep":{
              "type":"number"
            }
    },
	"required":[
          "name",
          "age",
          "daily_food",
          "daily_sleep"
        ]

}

var jsonData = pm.response.json();

pm.test('Schema is value', function() {
    pm.expect(tv4.validate(jsonData,schema,true,true)).to.be.true
});
```

###
