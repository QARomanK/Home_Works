-- ������������ �������:

	SELECT * FROM employees;
	SELECT * FROM roles_employee;
	SELECT * FROM employee_salary;
	SELECT * FROM roles;
	SELECT * FROM salary;

-- 1.������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

SELECT employees_name,salary.monthly_salary FROM employees
	JOIN employee_salary ON employee_id = employees.id
	JOIN salary ON salary_id = salary.id;

-- 2.������� ���� ���������� � ������� �� ������ 2000.

SELECT employees_name,salary.monthly_salary FROM employees
	JOIN employee_salary ON employee_id = employees.id
	JOIN salary ON salary_id = salary.id
	WHERE monthly_salary < 2000;


-- 3.������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

SELECT employees_name, salary.monthly_salary FROM employees
	RIGHT JOIN employee_salary ON employee_id = employees.id 
	JOIN salary ON salary_id = salary.id
    WHERE employees_name IS NULL;
   
   
-- 4.������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

SELECT employees_name, salary.monthly_salary FROM employees 
 	RIGHT JOIN employee_salary ON employees.id = employee_id
	JOIN salary ON salary.id = salary_id 
	WHERE employees_name IS NULL AND monthly_salary < 2000;

-- 5.����� ���� ���������� ���� �� ��������� ��.

SELECT employees_name, monthly_salary FROM employees
	FULL JOIN employee_salary ON employees.id = employee_id
	FULL JOIN salary ON salary_id = salary.id 
	WHERE employees_name IS NOT NULL AND monthly_salary IS NULL;


--  6.������� ���� ���������� � ���������� �� ���������.

SELECT employees_name, role_name FROM employees
	JOIN roles_employee ON employee_id = employees.id
	JOIN roles ON roles.id = role_id;

--  7.������� ����� � ��������� ������ Java �������������.

SELECT employees_name, role_name FROM employees 
	JOIN roles_employee ON employee_id = employees.id 
	JOIN roles ON roles.id = role_id
	WHERE role_name LIKE '%Java%';

-- 8.������� ����� � ��������� ������ Python �������������.

SELECT employees_name, role_name FROM employees
	JOIN roles_employee ON employee_id = employees.id 
	JOIN roles ON role_id = roles.id 
	WHERE role_name LIKE '%Python%';

-- 9.������� ����� � ��������� ���� QA ���������.

SELECT employees_name, role_name FROM employees
	JOIN roles_employee ON employee_id = employees.id 
	JOIN roles ON role_id = roles.id
	WHERE role_name LIKE '%QA%';

-- 10.������� ����� � ��������� ������ QA ���������.

SELECT employees_name, role_name FROM employees 
	JOIN roles_employee ON  employee_id = employees.id 
	JOIN roles ON role_id = roles.id
	WHERE role_name LIKE '%Manual%';
	
	
-- 11.������� ����� � ��������� ��������������� QA

SELECT employees_name, role_name FROM employees e 
	JOIN roles_employee re ON e.id = re.employee_id 
	JOIN roles r ON r.id = re.role_id
	WHERE role_name LIKE '%Automation%';

-- 12.������� ����� � �������� Junior ������������

SELECT employees_name, role_name, monthly_salary FROM employees e 
	JOIN roles_employee re ON e.id = re.employee_id 
	JOIN roles r ON r.id = role_id 
	JOIN employee_salary es ON es.employee_id = re.employee_id 
	JOIN salary ON es.salary_id =  salary.id
	WHERE role_name LIKE '%Junior%';


-- 13.������� ����� � �������� Middle ������������

SELECT employees_name, role_name, monthly_salary FROM employees e 
	JOIN roles_employee re ON e.id = re.employee_id 
	JOIN roles r  ON r.id = re.role_id 
	JOIN employee_salary es ON es.employee_id = re.employee_id 
	JOIN salary s ON s.id = es.salary_id 
	WHERE role_name LIKE '%Middle%';

-- 14. ������� ����� � �������� Senior ������������

SELECT employees_name, role_name, monthly_salary FROM employees e 
	JOIN roles_employee re ON e.id = re.employee_id 
	JOIN roles r  ON r.id = re.role_id 
	JOIN employee_salary es ON es.employee_id = re.employee_id 
	JOIN salary s ON s.id = es.salary_id 
	WHERE role_name LIKE '%Senior%';

-- 15. ������� �������� Java �������������

SELECT role_name, monthly_salary FROM roles_employee re
	JOIN roles r ON r.id = role_id 
	JOIN employee_salary es ON es.employee_id = re.employee_id 
	JOIN salary s ON s.id = es.salary_id 
	WHERE role_name LIKE '%Java%';

-- 16. ������� �������� Python �������������

SELECT role_name, monthly_salary FROM roles_employee re
	JOIN roles r ON r.id = role_id 
	JOIN employee_salary es ON es.employee_id = re.employee_id 
	JOIN salary s ON s.id = es.salary_id 
	WHERE role_name LIKE '%Python%';

-- 17. ������� ����� � �������� Junior Python �������������

SELECT employees_name, monthly_salary, role_name FROM employees e 
	JOIN roles_employee re ON e.id = re.employee_id 
	JOIN roles r ON re.role_id = r.id 
	JOIN employee_salary es ON re.employee_id = es.employee_id 
	JOIN salary s ON es.salary_id = s.id
	WHERE role_name LIKE '%Junior Python%';


-- 18. ������� ����� � �������� Middle JS �������������

SELECT employees_name, monthly_salary, role_name FROM employees e 
	JOIN roles_employee re ON e.id = re.employee_id 
	JOIN roles r ON re.role_id = r.id 
	JOIN employee_salary es ON re.employee_id = es.employee_id 
	JOIN salary s ON es.salary_id = s.id
	WHERE role_name LIKE '%Middle JS%';

-- 19. ������� ����� � �������� Senior Java �������������

SELECT employees_name, monthly_salary, role_name FROM employees e 
	JOIN roles_employee re ON e.id = re.employee_id 
	JOIN roles r ON  re.role_id = r.id
	JOIN employee_salary es ON re.employee_id = es.employee_id 
	JOIN salary s ON es.salary_id = s.id 
	WHERE role_name  LIKE '%Senior Java%';

-- 20. ������� �������� Junior QA ���������

SELECT role_name, monthly_salary FROM roles_employee re 
	JOIN roles r ON re.role_id = r.id 
	JOIN employee_salary es ON re.employee_id = es.employee_id 
	JOIN salary s ON es.salary_id = s.id
	WHERE role_name LIKE '%Junior%QA%';

-- 21. ������� ������� �������� ���� Junior ������������

SELECT AVG(monthly_salary) AS Average_junior_salary FROM roles_employee re
	JOIN roles r ON re.role_id = r.id 
	JOIN employee_salary es ON re.employee_id = es.employee_id 
	JOIN salary s ON es.salary_id = s.id 
	WHERE role_name LIKE '%Junior%';

-- 22. ������� ����� ������� JS �������������

SELECT SUM(monthly_salary) AS sum_js_salalry FROM roles_employee re 
	JOIN roles r ON re.role_id = r.id 
	JOIN employee_salary es ON re.employee_id = es.employee_id 
	JOIN salary s ON s.id = es.salary_id
	WHERE role_name LIKE '%Java%';

-- 23. ������� ����������� �� QA ���������

SELECT MIN(monthly_salary) AS min_qa_salary FROM roles_employee re 
	JOIN roles r ON re.role_id = r.id 
	JOIN employee_salary es ON re.employee_id = es.employee_id 
	JOIN salary s ON s.id = es.salary_id 
	WHERE role_name LIKE '%QA%';

-- 24. ������� ������������ �� QA ���������

SELECT MAX(monthly_salary) AS max_qa_salary FROM roles_employee re 
	JOIN roles r ON re.role_id = r.id 
	JOIN employee_salary es ON re.employee_id = es.employee_id 
	JOIN salary s ON s.id = es.salary_id 
	WHERE role_name LIKE '%QA%';

-- 25. ������� ���������� QA ���������

SELECT COUNT(role_name) AS all_qa_engeners FROM employees e
	JOIN roles_employee re ON e.id = re.employee_id 
	JOIN roles r ON re.role_id = r.id
	WHERE role_name LIKE '%QA%';

-- 26. ������� ���������� Middle ������������.

SELECT COUNT(role_name) AS all_middle_sp FROM employees e 
	JOIN roles_employee re ON e.id = re.employee_id 
	JOIN roles r ON r.id = re.role_id 
	WHERE role_name LIKE '%Middle%';

-- 27. ������� ���������� �������������

SELECT COUNT(role_name) AS all_developer FROM employees e 
	JOIN roles_employee re ON e.id = re.employee_id 
	JOIN roles r ON r.id = re.role_id 
	WHERE role_name LIKE '%developer%';

-- 28. ������� ���� (�����) �������� �������������.

SELECT SUM(monthly_salary) AS fond_developer_salary FROM roles_employee re 
	JOIN roles r ON r.id = re.role_id 
	JOIN employee_salary es ON es.employee_id = re.employee_id 
	JOIN salary s ON s.id = es.salary_id 
	WHERE role_name LIKE '%developer%';

-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������

SELECT employees_name, role_name, monthly_salary FROM employees e
	JOIN roles_employee re ON re.employee_id = e.id 
	JOIN roles r ON r.id = re.role_id 
	JOIN employee_salary es ON es.employee_id = re.employee_id 
	JOIN salary s ON s.id = es.salary_id 
	ORDER BY monthly_salary;

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300

SELECT employees_name, role_name, monthly_salary FROM employees e
	JOIN roles_employee re ON re.employee_id = e.id 
	JOIN roles r ON r.id = re.role_id 
	JOIN employee_salary es ON es.employee_id = re.employee_id 
	JOIN salary s ON s.id = es.salary_id 
	WHERE monthly_salary BETWEEN 1700 AND 2300
	ORDER BY monthly_salary ;

-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300

SELECT employees_name, role_name, monthly_salary FROM employees e
	JOIN roles_employee re ON re.employee_id = e.id 
	JOIN roles r ON r.id = re.role_id 
	JOIN employee_salary es ON es.employee_id = re.employee_id 
	JOIN salary s ON s.id = es.salary_id
	WHERE monthly_salary < 2000
	ORDER BY monthly_salary;


-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000


SELECT employees_name, role_name, monthly_salary FROM employees e
	JOIN roles_employee re ON re.employee_id = e.id 
	JOIN roles r ON r.id = re.role_id 
	JOIN employee_salary es ON es.employee_id = re.employee_id 
	JOIN salary s ON s.id = es.salary_id
	WHERE monthly_salary IN (1100,1500,2000)
	ORDER BY monthly_salary;
