```
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});

    var jsonData = pm.response.json();
      
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
    pm.expect(jsonData.family.pets.dog.name).to.be.oneOf(["Lucy"]);
});
```
