Protocol: http
IP: 162.55.220.72
Port: 5005

EP_1
Method: GET
EndPoint: /get_method
request url params: 
 name: str
 age: int

response: 
[
    “Str”,
    “Str”
]

http://162.55.220.72:5005/get_method?name=Roman&age=33

[
    "Roman",
    "33"
]
==================

EP_2
Method: POST
EndPoint: /user_info_3
request form data: 
 name: str
 age: int
 salary: int

response: 
{'name': name,
          'age': age,
          'salary': salary,
          'family': {'children': [['Alex', 24], ['Kate', 12]],
                     'u_salary_1_5_year': salary * 4}}

http://162.55.220.72:5005/user_info_3?name=Max&age=24&salary=2150

{
    "age": "42",
    "family": {
        "children": [
            [
                "Alex",
                24
            ],
            [
                "Kate",
                12
            ]
        ],
        "u_salary_1_5_year": 8600
    },
    "name": "Max",
    "salary": 2150
}
==================

EP_3
Method: GET
EndPoint: /object_info_1
request url params: 
 name: str
 age: int
 weight: int

response: 
{'name': name,
          'age': age,
          'daily_food': weight * 0.012,
          'daily_sleep': weight * 2.5}

http://162.55.220.72:5005/object_info_1?name=Oleg&age=38&weight=74

{
    "age": 38,
    "daily_food": 0.888,
    "daily_sleep": 185.0,
    "name": "Oleg"
}
==================

EP_4
Method: GET
EndPoint: /object_info_2
request url params: 
 name: str
 age: int
 salary: int

response: 
{'start_qa_salary': salary,
          'qa_salary_after_6_months': salary * 2,
          'qa_salary_after_12_months': salary * 2.7,
          'qa_salary_after_1.5_year': salary * 3.3,
          'qa_salary_after_3.5_years': salary * 3.8,
          'person': {'u_name': [user_name, salary, age],
                     'u_age': age,
                     'u_salary_5_years': salary * 4.2}
          }

http://162.55.220.72:5005/object_info_2?name=Polina&age=27&salary=1200

{
    "person": {
        "u_age": 27,
        "u_name": [
            "Polina",
            1200,
            27
        ],
        "u_salary_5_years": 5040.0
    },
    "qa_salary_after_1.5_year": 3960.0,
    "qa_salary_after_12_months": 3240.0,
    "qa_salary_after_3.5_years": 4560.0,
    "qa_salary_after_6_months": 2400,
    "start_qa_salary": 1200
}



==================

EP_5
Method: GET
EndPoint: /object_info_3
request url params: 
 name: str
 age: int
 salary: int

response: 
{'name': name,
          'age': age,
          'salary': salary,
          'family': {'children': [['Alex', 24], ['Kate', 12]],
                     'pets': {'cat':{'name':'Sunny',
                                     'age': 3},
                              'dog':{'name':'Luky',
                                     'age': 4}},
                     'u_salary_1_5_year': salary * 4}
          }

http://162.55.220.72:5005/object_info_3?name=Victor&age=48&salary=2780

{
    "age": "48",
    "family": {
        "children": [
            [
                "Alex",
                24
            ],
            [
                "Kate",
                12
            ]
        ],
        "pets": {
            "cat": {
                "age": 3,
                "name": "Sunny"
            },
            "dog": {
                "age": 4,
                "name": "Luky"
            }
        },
        "u_salary_1_5_year": 11120
    },
    "name": "Victor",
    "salary": 2780
}
==================

EP_6
Method: GET
EndPoint: /object_info_4
request url params: 
 name: str
 age: int
 salary: int

response: 
{'name': name,
          'age': int(age),
          'salary': [salary, str(salary * 2), str(salary * 3)]}

http://162.55.220.72:5005/object_info_4?name=Alex&age=45&salary=1280

{
    "age": 45,
    "name": "Alex",
    "salary": [
        1280,
        "2560",
        "3840"
    ]
}

==================

EP_7
Method: POST
EndPoint: /user_info_2
request form data: 
 name: str
 age: int
 salary: int

response: 
{'start_qa_salary': salary,
          'qa_salary_after_6_months': salary * 2,
          'qa_salary_after_12_months': salary * 2.7,
          'qa_salary_after_1.5_year': salary * 3.3,
          'qa_salary_after_3.5_years': salary * 3.8,
          'person': {'u_name': [user_name, salary, age],
                     'u_age': age,
                     'u_salary_5_years': salary * 4.2}
          }
		  
		  
 http://162.55.220.72:5005/user_info_2?name=Irina&age=22&salary=800
		  
		  
{
    "person": {
        "u_age": 20,
        "u_name": [
            "Irina",
            800,
            20
        ],
        "u_salary_5_years": 3360.0
    },
    "qa_salary_after_1.5_year": 2640.0,
    "qa_salary_after_12_months": 2160.0,
    "qa_salary_after_3.5_years": 3040.0,
    "qa_salary_after_6_months": 1600,
    "start_qa_salary": 800
} 
