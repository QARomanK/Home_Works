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
console.log(req.family);
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
### Проверить, что параметр age имеет значение 4.
```
pm.test("Check_Mening_of_DogAge", function () {
    pm.expect(jsonData.family.pets.dog.age).to.be.oneOf([4]);
});
```
***
