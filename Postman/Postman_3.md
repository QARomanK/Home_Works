### POST http://162.55.220.72:5005/login

Парсим токен, передаем в окружение.
```
var jsonData = pm.response.json();

console.log(jsonData.token);

pm.environment.set("token",jsonData.token);
```
***

### POST http://162.55.220.72:5005/user_info

