-- Используемые таблици:

	SELECT * FROM employees;
	SELECT * FROM roles_employee;
	SELECT * FROM employee_salary;
	SELECT * FROM roles;
	SELECT * FROM salary;

-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

SELECT employees_name,salary.monthly_salary FROM employees
	JOIN employee_salary ON employee_id = employees.id
	JOIN salary ON salary_id = salary.id;

-- 2. Вывести всех работников у которых ЗП меньше 2000.

SELECT employees_name,salary.monthly_salary FROM employees
	JOIN employee_salary ON employee_id = employees.id
	JOIN salary ON salary_id = salary.id
	WHERE monthly_salary < 2000;


-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

SELECT employees_name, salary.monthly_salary FROM employees
	RIGHT JOIN employee_salary ON employee_id = employees.id 
	JOIN salary ON salary_id = salary.id
        WHERE employees_name IS NULL;
   
   
-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

SELECT employees_name, salary.monthly_salary FROM employees 
 	RIGHT JOIN employee_salary ON employees.id = employee_id
	JOIN salary ON salary.id = salary_id 
	WHERE employees_name IS NULL AND monthly_salary < 2000;

-- 5. Найти всех работников кому не начислена ЗП.

SELECT employees_name, monthly_salary FROM employees
	FULL JOIN employee_salary ON employees.id = employee_id
	FULL JOIN salary ON salary_id = salary.id 
	WHERE employees_name IS NOT NULL AND monthly_salary IS NULL;


--  6. Вывести всех работников с названиями их должности.

SELECT employees_name, role_name FROM employees
	JOIN roles_employee ON employee_id = employees.id
	JOIN roles ON roles.id = role_id;

--  7. Вывести имена и должность только Java разработчиков.

SELECT employees_name, role_name FROM employees 
	JOIN roles_employee ON employee_id = employees.id 
	JOIN roles ON roles.id = role_id
	WHERE role_name LIKE '%Java%';

-- 8. Вывести имена и должность только Python разработчиков.

SELECT employees_name, role_name FROM employees
	JOIN roles_employee ON employee_id = employees.id 
	JOIN roles ON role_id = roles.id 
	WHERE role_name LIKE '%Python%';

-- 9. Вывести имена и должность всех QA инженеров.

SELECT employees_name, role_name FROM employees
	JOIN roles_employee ON employee_id = employees.id 
	JOIN roles ON role_id = roles.id
	WHERE role_name LIKE '%QA%';

-- 10. Вывести имена и должность ручных QA инженеров.

SELECT employees_name, role_name FROM employees 
	JOIN roles_employee ON  employee_id = employees.id 
	JOIN roles ON role_id = roles.id
	WHERE role_name LIKE '%Manual%';
	
	
-- 11. Вывести имена и должность автоматизаторов QA.

SELECT employees_name, role_name FROM employees e 
	JOIN roles_employee re ON e.id = re.employee_id 
	JOIN roles r ON r.id = re.role_id
	WHERE role_name LIKE '%Automation%';

-- 12. Вывести имена и зарплаты Junior специалистов.

SELECT employees_name, role_name, monthly_salary FROM employees e 
	JOIN roles_employee re ON e.id = re.employee_id 
	JOIN roles r ON r.id = role_id 
	JOIN employee_salary es ON es.employee_id = re.employee_id 
	JOIN salary ON es.salary_id =  salary.id
	WHERE role_name LIKE '%Junior%';


-- 13. Вывести имена и зарплаты Middle специалистов.

SELECT employees_name, role_name, monthly_salary FROM employees e 
	JOIN roles_employee re ON e.id = re.employee_id 
	JOIN roles r  ON r.id = re.role_id 
	JOIN employee_salary es ON es.employee_id = re.employee_id 
	JOIN salary s ON s.id = es.salary_id 
	WHERE role_name LIKE '%Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов.

SELECT employees_name, role_name, monthly_salary FROM employees e 
	JOIN roles_employee re ON e.id = re.employee_id 
	JOIN roles r  ON r.id = re.role_id 
	JOIN employee_salary es ON es.employee_id = re.employee_id 
	JOIN salary s ON s.id = es.salary_id 
	WHERE role_name LIKE '%Senior%';

-- 15. Вывести зарплаты Java разработчиков.

SELECT role_name, monthly_salary FROM roles_employee re
	JOIN roles r ON r.id = role_id 
	JOIN employee_salary es ON es.employee_id = re.employee_id 
	JOIN salary s ON s.id = es.salary_id 
	WHERE role_name LIKE '%Java%';

--  16. Вывести зарплаты Python разработчиков.

SELECT role_name, monthly_salary FROM roles_employee re
	JOIN roles r ON r.id = role_id 
	JOIN employee_salary es ON es.employee_id = re.employee_id 
	JOIN salary s ON s.id = es.salary_id 
	WHERE role_name LIKE '%Python%';

--  17. Вывести имена и зарплаты Junior Python разработчиков.

SELECT employees_name, monthly_salary, role_name FROM employees e 
	JOIN roles_employee re ON e.id = re.employee_id 
	JOIN roles r ON re.role_id = r.id 
	JOIN employee_salary es ON re.employee_id = es.employee_id 
	JOIN salary s ON es.salary_id = s.id
	WHERE role_name LIKE '%Junior Python%';


-- 18. Вывести имена и зарплаты Middle JS разработчиков.

SELECT employees_name, monthly_salary, role_name FROM employees e 
	JOIN roles_employee re ON e.id = re.employee_id 
	JOIN roles r ON re.role_id = r.id 
	JOIN employee_salary es ON re.employee_id = es.employee_id 
	JOIN salary s ON es.salary_id = s.id
	WHERE role_name LIKE '%Middle JS%';

-- 19. Вывести имена и зарплаты Senior Java разработчиков.

SELECT employees_name, monthly_salary, role_name FROM employees e 
	JOIN roles_employee re ON e.id = re.employee_id 
	JOIN roles r ON  re.role_id = r.id
	JOIN employee_salary es ON re.employee_id = es.employee_id 
	JOIN salary s ON es.salary_id = s.id 
	WHERE role_name  LIKE '%Senior Java%';

-- 20. Вывести зарплаты Junior QA инженеров.

SELECT role_name, monthly_salary FROM roles_employee re 
	JOIN roles r ON re.role_id = r.id 
	JOIN employee_salary es ON re.employee_id = es.employee_id 
	JOIN salary s ON es.salary_id = s.id
	WHERE role_name LIKE '%Junior%QA%';

-- 21. Вывести среднюю зарплату всех Junior специалистов.

SELECT AVG(monthly_salary) AS Average_junior_salary FROM roles_employee re
	JOIN roles r ON re.role_id = r.id 
	JOIN employee_salary es ON re.employee_id = es.employee_id 
	JOIN salary s ON es.salary_id = s.id 
	WHERE role_name LIKE '%Junior%';

-- 22. Вывести сумму зарплат JS разработчиков.

SELECT SUM(monthly_salary) AS sum_js_salalry FROM roles_employee re 
	JOIN roles r ON re.role_id = r.id 
	JOIN employee_salary es ON re.employee_id = es.employee_id 
	JOIN salary s ON s.id = es.salary_id
	WHERE role_name LIKE '%Java%';

-- 23. Вывести минимальную ЗП QA инженеров.

SELECT MIN(monthly_salary) AS min_qa_salary FROM roles_employee re 
	JOIN roles r ON re.role_id = r.id 
	JOIN employee_salary es ON re.employee_id = es.employee_id 
	JOIN salary s ON s.id = es.salary_id 
	WHERE role_name LIKE '%QA%';

--  24. Вывести максимальную ЗП QA инженеров.

SELECT MAX(monthly_salary) AS max_qa_salary FROM roles_employee re 
	JOIN roles r ON re.role_id = r.id 
	JOIN employee_salary es ON re.employee_id = es.employee_id 
	JOIN salary s ON s.id = es.salary_id 
	WHERE role_name LIKE '%QA%';

-- 25. Вывести количество QA инженеров.

SELECT COUNT(role_name) AS all_qa_engeners FROM employees e
	JOIN roles_employee re ON e.id = re.employee_id 
	JOIN roles r ON re.role_id = r.id
	WHERE role_name LIKE '%QA%';

-- 26. Вывести количество Middle специалистов.

SELECT COUNT(role_name) AS all_middle_sp FROM employees e 
	JOIN roles_employee re ON e.id = re.employee_id 
	JOIN roles r ON r.id = re.role_id 
	WHERE role_name LIKE '%Middle%';

-- 27. Вывести количество разработчиков.

SELECT COUNT(role_name) AS all_developer FROM employees e 
	JOIN roles_employee re ON e.id = re.employee_id 
	JOIN roles r ON r.id = re.role_id 
	WHERE role_name LIKE '%developer%';

-- 28. Вывести фонд (сумму) зарплаты разработчиков.

SELECT SUM(monthly_salary) AS fond_developer_salary FROM roles_employee re 
	JOIN roles r ON r.id = re.role_id 
	JOIN employee_salary es ON es.employee_id = re.employee_id 
	JOIN salary s ON s.id = es.salary_id 
	WHERE role_name LIKE '%developer%';

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию.

SELECT employees_name, role_name, monthly_salary FROM employees e
	JOIN roles_employee re ON re.employee_id = e.id 
	JOIN roles r ON r.id = re.role_id 
	JOIN employee_salary es ON es.employee_id = re.employee_id 
	JOIN salary s ON s.id = es.salary_id 
	ORDER BY monthly_salary;

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300.
SELECT employees_name, role_name, monthly_salary FROM employees e
	JOIN roles_employee re ON re.employee_id = e.id 
	JOIN roles r ON r.id = re.role_id 
	JOIN employee_salary es ON es.employee_id = re.employee_id 
	JOIN salary s ON s.id = es.salary_id 
	WHERE monthly_salary BETWEEN 1700 AND 2300
	ORDER BY monthly_salary ;

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300.

SELECT employees_name, role_name, monthly_salary FROM employees e
	JOIN roles_employee re ON re.employee_id = e.id 
	JOIN roles r ON r.id = re.role_id 
	JOIN employee_salary es ON es.employee_id = re.employee_id 
	JOIN salary s ON s.id = es.salary_id
	WHERE monthly_salary < 2000
	ORDER BY monthly_salary;


-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000.


SELECT employees_name, role_name, monthly_salary FROM employees e
	JOIN roles_employee re ON re.employee_id = e.id 
	JOIN roles r ON r.id = re.role_id 
	JOIN employee_salary es ON es.employee_id = re.employee_id 
	JOIN salary s ON s.id = es.salary_id
	WHERE monthly_salary IN (1100,1500,2000)
	ORDER BY monthly_salary;
