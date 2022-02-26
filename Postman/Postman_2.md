# Postman Home Work 2

### http://162.55.220.72:5005/first

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


















###  http://162.55.220.72:5005/object_info_3

Статус код 200
```
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});
```
Спарсить response body в json.
```
    var jsonData = pm.response.json();
```
```
    var req =  request.data ;

pm.test("Check_name", function () {
    pm.expect(jsonData.name).to.eql("Victor");
});

pm.test("Check_age", function () {
    pm.expect(jsonData.age).to.eql("48");
});

pm.test("Check_Salary", function () {
    pm.expect(jsonData.salary).to.eql(2780);
});

 console.log (jsonData.family) ;

pm.test("Check_Dog_Property_Name", function () {
    pm.expect(jsonData.family.pets.dog).to.have.property("name");
});

pm.test("Check_DogAge", function () {
    pm.expect(jsonData.family.pets.dog).to.have.property("age");
});

pm.test("Check_DogName", function () {
    pm.expect(jsonData.family.pets.dog.name).to.be.oneOf(["Luky"]);
});

pm.test("Check_Mening_of_DogAge", function () {
    pm.expect(jsonData.family.pets.dog.age).to.be.oneOf([4]);
});
```
