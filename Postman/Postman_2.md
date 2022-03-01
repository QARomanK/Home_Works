# Postman Home Work 2

### GET http://162.55.220.72:5005/first

### Отправить запрос.
```
pm.sendRequest("https://postman-echo.com/get", function (err, response) {
    console.log(response.json());
});
```
### Статус 200.
```
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});
```
### Проверить, что в body приходит правильный string.
```
pm.test("Body is correct", function () {
    pm.response.to.have.body("This is the first responce from server!");
});
```
***

### POST http://162.55.220.72:5005/user_info_3

### Отправить запрос
```
pm.sendRequest("https://postman-echo.com/get", function (err, response) {
    console.log(response.json());
});
```

### Статус 200
```
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});
```

### Спарсить response body в json.
```
var jsonData = pm.response.json();
```

### Проверить, что name в ответе равно name s request (name вбить руками.)
```
pm.test("Check Name", function () {
    pm.expect(jsonData.name).to.eql("Oleg");
});
```

### Проверить, что age в ответе равно age s request (age вбить руками.)
```
pm.test("Check Age", function () {
    pm.expect(jsonData.age).to.eql("32");
});
```

### Проверить, что salary в ответе равно salary s request (salary вбить руками.)
```
pm.test("CheckSalary", function () {
    pm.expect(jsonData.salary).to.eql(1250);
});
```

### Спарсить request
```
var req = request.data;
```

### Проверить, что name в ответе равно name s request (name забрать из request.)
```
pm.test("Chech_requstName", function () {
    pm.expect(jsonData.name).to.eql(req.name);
});
```

### Проверить, что age в ответе равно age s request (age забрать из request.)
```
pm.test("Chech_requstAge", function () {
    pm.expect(jsonData.age).to.eql(req.age);
});
```

### Проверить, что salary в ответе равно salary s request (salary забрать из request.)
```
pm.test("Chech_requstSalary", function () {
    var sal = parseInt(req.salary);
    pm.expect(jsonData.salary).to.eql(sal);
});
```

### Вывести в консоль параметр family из response.
```
console.log(jsonData.family);
```

### Проверить что u_salary_1_5_year в ответе равно salary*4 (salary забрать из request)
```
pm.test("Check Salary*4", function () {
    pm.expect(jsonData.family.u_salary_1_5_year).to.eql(req.salary*4);
});
```
***
### GET http://162.55.220.72:5005/object_info_3

### Отправить запрос.
```
pm.sendRequest("https://postman-echo.com/get", function (err, response) {
    console.log(response.json());
});
```

### Статус код 200
```
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});
```
### Спарсить response body в json.
```
    var jsonData = pm.response.json();
```
### Спарсить request.
```
    var req = pm.request.url.query.toObject();
    var sal = parseInt(req.salary);
```

### Проверить, что name в ответе равно name s request (name забрать из request.)
```
pm.test("Check_name", function () {
    pm.expect(jsonData.name).to.eql(req.name);
});
```

### Проверить, что age в ответе равно age s request (age забрать из request.)
```
pm.test("Check_age", function () {
    pm.expect(jsonData.age).to.eql(req.age);
});
```

### Проверить, что salary в ответе равно salary s request (salary забрать из request.)
```
pm.test("Check_Salary", function () {
    pm.expect(jsonData.salary).to.eql(sal);
});
```

### Вывести в консоль параметр family из response.
```
 console.log (jsonData.family) ;
```

### Проверить, что у параметра dog есть параметры name.
```
pm.test("Check_Dog_Property_Name", function () {
    pm.expect(jsonData.family.pets.dog).to.have.property("name");
});
```

### Проверить, что у параметра dog есть параметры age.
```
pm.test("Check_DogAge", function () {
    pm.expect(jsonData.family.pets.dog).to.have.property("age");
});
```

### Проверить, что параметр name имеет значение Luky.
```
pm.test("Check_DogName", function () {
    pm.expect(jsonData.family.pets.dog.name).to.be.oneOf(["Luky"]);
});
```

#### или так:
```
pm.test("Check_DogName_2", function () {
    pm.expect(jsonData.family.pets.dog.name).to.eql("Luky");
});
```
### Проверить, что параметр age имеет значение 4.
```
pm.test("Check_Mening_of_DogAge", function () {
    pm.expect(jsonData.family.pets.dog.age).to.be.oneOf([4]);
});
```
#### или так:
```
pm.test("Check_Mening_of_DogAge_2", function () {
    pm.expect(jsonData.family.pets.dog.age).to.eql(4);
});
```
***

### GET http://162.55.220.72:5005/object_info_4

### Отправить запрос.
```
pm.sendRequest("https://postman-echo.com/get", function (err, response) {
    console.log(response.json());
});
```

### Статус код 200
```
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});
```

### Спарсить response body в json.
```
   var jsonData = pm.response.json();
```

### Спарсить request.
```
    var req = pm.request.url.query.toObject();
    var age = parseInt(req.age);
    var sal = parseInt(req.salary);
```

### Проверить, что name в ответе равно name s request (name забрать из request.)
```
pm.test("Check_name", function () {
    pm.expect(jsonData.name).to.eql(req.name);
});
```

### Проверить, что age в ответе равно age из request (age забрать из request.)
```
pm.test("Check_age", function () {
    pm.expect(jsonData.age).to.eql(age);
});
```

### Вывести в консоль параметр salary из request.
```
console.log(req.salary);
```

### Вывести в консоль параметр salary из response.
```
console.log(jsonData.salary);
```

### Вывести в консоль 0-й элемент параметра salary из response.
```
console.log(jsonData.salary[0]);
```

### Вывести в консоль 1-й элемент параметра salary параметр salary из response. 
```
console.log(jsonData.salary[1]);
```

### Вывести в консоль 2-й элемент параметра salary параметр salary из response. 
```
console.log(jsonData.salary[2]);
```

### Проверить, что 0-й элемент параметра salary равен salary из request (salary забрать из request.)
```
pm.test("Compare items salary", function () {
    
    pm.expect(jsonData.salary[0]).to.eql(+req.salary);
});
```

### Проверить, что 1-й элемент параметра salary равен salary*2 из request (salary забрать из request.)
```
pm.test("Compare items salary", function () {
    var JsonSal = parseInt(jsonData.salary[1]);
    pm.expect(JsonSal).to.eql(sal*2);
});
```

### Проверить, что 2-й элемент параметра salary равен salary*3 из request (salary забрать из request.)
```
pm.test("Compare items salary", function () {
    var JsonSal = parseInt(jsonData.salary[2]);
    pm.expect(JsonSal).to.eql(sal*3);
});
```

### Передать в окружение переменную name
```
pm.environment.set("name", req.name);
```

### Передать в окружение переменную age
```
pm.environment.set("age", req.age);
```

### Передать в окружение переменную salary
```
pm.environment.set("salary", req.salary);
```

### Написать цикл который выведет в консоль по порядку элементы списка из параметра salary.
```
for (var i = 0; i < jsonData.salary.length; i++) {
    console.log (jsonData.salary[i]);
}
```
***

### POST http://162.55.220.72:5005/user_info_2

### Вставить параметр salary из окружения в request

```
KEY:salary Value:{{salary}}
```
### Вставить параметр age из окружения в age

```
KEY:age Value:{{age}}
```
### Вставить параметр name из окружения в name

```
KEY:name Value:{{name}}
```

### Отправить запрос
```
pm.sendRequest("https://postman-echo.com/get", function (err, response) {
    console.log(response.json());
});
```

### Статус код 200 
```
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});
```

### Спарсить response body в json
```
var jsonData = pm.response.json();
```

### Спарсить request
```
var req = request.data;
```

### Проверить, что json response имеет параметр start_qa_salary
```
pm.test("Check property start_qa_salary", function () {
    pm.expect(jsonData).to.have.property("start_qa_salary");
});
```

###  Проверить, что json response имеет параметр qa_salary_after_6_months
```
pm.test("Check property qa_salary_after_6_months ", function () {
    pm.expect(jsonData).to.have.property("qa_salary_after_6_months");
});
```

###  Проверить, что json response имеет параметр qa_salary_after_12_months
```
pm.test("Check property qa_salary_after_12_months", function () {
    pm.expect(jsonData).to.have.property("qa_salary_after_12_months");
});
```

###  Проверить, что json response имеет параметр qa_salary_after_1.5_year
```
pm.test("Check property qa_salary_after_1.5_year", function () {
    pm.expect(jsonData).to.have.property("qa_salary_after_1.5_year");
});
```

### Проверить, что json response имеет параметр qa_salary_after_3.5_years
```
pm.test("Check property qa_salary_after_3.5_years", function () {
    pm.expect(jsonData).to.have.property("qa_salary_after_3.5_years");
});
```

### Проверить, что json response имеет параметр person
```
pm.test("Check property person", function () {
    pm.expect(jsonData).to.have.property("person");
});
```

### Проверить, что параметр start_qa_salary равен salary из request (salary забрать из request.)
```
pm.test("Compare property", function () {
    pm.expect(jsonData.start_qa_salary).to.eql(req.salary*1);
});
```

### Проверить, что параметр qa_salary_after_6_months равен salary*2 из request (salary забрать из request.)
```
pm.test("Compare property_2", function () {
    pm.expect(jsonData.qa_salary_after_6_months).to.eql(req.salary*2);
});
```

### Проверить, что параметр qa_salary_after_12_months равен salary*2.7 из request (salary забрать из request.)
```
pm.test("Compare property_3", function () {
    pm.expect(jsonData.qa_salary_after_12_months).to.eql(req.salary*2.7);
});
```

### Проверить, что параметр qa_salary_after_1.5_year равен salary*3.3 из request (salary забрать из request.)
```
pm.test("Compare property_3", function () {
    pm.expect(jsonData["qa_salary_after_1.5_year"]).to.eql(req.salary*3.3);
});
```

### Проверить, что параметр qa_salary_after_3.5_years равен salary*3.8 из request (salary забрать из request.)
```
pm.test("Compare property_3", function () {
    pm.expect(jsonData["qa_salary_after_3.5_years"]).to.eql(req.salary*3.8);
});
```

### Проверить, что в параметре person, 1-й элемент из u_name равен salary из request (salary забрать из request.)
```
pm.test("Compare property_u_name", function () {
    pm.expect(jsonData.person.u_name[1]).to.eql(+req.salary);
});
```

### Проверить, что что параметр u_age равен age из request (age забрать из request.)
```
pm.test("Compare property_u_age", function () {
    pm.expect(jsonData.person.u_age).to.eql(+req.age);
});
```

### Проверить, что параметр u_salary_5_years равен salary*4.2 из request (salary забрать из request.)
```
pm.test("Compare property_u_salary_5_years", function () {
    pm.expect(jsonData.person.u_salary_5_years).to.eql(req.salary*4.2);
});
```

### Написать цикл который выведет в консоль по порядку элементы списка из параметра person.
```
for (i in jsonData.person){ 
    console.log("property:", i );
};
```
