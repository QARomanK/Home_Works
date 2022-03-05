### POST http://162.55.220.72:5005/login

```
var jsonData = pm.response.json();

console.log(jsonData.token);

pm.environment.set("token",jsonData.token);
```
