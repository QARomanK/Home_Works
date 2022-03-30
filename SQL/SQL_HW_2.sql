-- Создать таблицу employees:
--id. serial,  primary key, employee_name. Varchar(50), not null

create table employees (
	id serial primary key,
	employees_name varchar(50) not null
);

-- Наполнить таблицу employee 70 строками.

insert into employees(employees_name) 
 values ('Jacob'),
	   ('Emma'),
	   ('Michael'),
	   ('Emily'),
	   ('Joshua'),
	   ('Madison'),
	   ('Matthew'),
	   ('Olivia'),
	   ('Ethan'),
	   ('Hannah'),
	   ('Andrew'),
	   ('Abigail'),
	   ('Daniel'),
	   ('Isabella'),
	   ('William'),
	   ('Ashley'),
	   ('Joseph'),
	   ('Samantha'),
	   ('Christopher'),
	   ('Elizabeth'),
	   ('Anthony'),
	   ('Alexis'),
	   ('Ryan'),
	   ('Sarah'),
	   ('Nicholas'),
	   ('Grace'),
	   ('David'),
	   ('Alyssa'),
	   ('Alexander'),
	   ('Sophia'),
	   ('Tyler'),
	   ('Lauren'),
	   ('Brianna'),
	   ('James'),
	   ('Brianna'),
	   ('John'),
	   ('Kayla'),
	   ('Dylan'),
	   ('Natalie'),
	   ('Nathan'),
	   ('Anna'),
	   ('Jonathan'),
	   ('Jessica'),
	   ('Brandon'),
	   ('Taylor'),
	   ('Samuel'),
	   ('Chloe'),
	   ('Christian'),
	   ('Hailey'),
	   ('Benjamin'),
	   ('Ava'),
	   ('Jasmine'),
	   ('Zachary'),
	   ('Logan'),
	   ('Sydney'),
	   ('Jose'),
	   ('Victoria'),
	   ('Noah'),
	   ('Ella'),
	   ('Noah'),
	   ('Justin'),
	   ('Mia'),
	   ('Elijah'),
	   ('Morgan'),
	   ('Gabriel'),
	   ('Julia'),
	   ('Caleb'),
	   ('Kaitlyn'),
	   ('Kevin'),
	   ('Rachel');

-- Создать таблицу salary:
-- id. Serial  primary key, monthly_salary. Int, not null
	  
	  
create table salary (
	id serial primary key,
	monthly_salary int not null 
);

-- Наполнить таблицу salary 15 строками:

insert into salary(monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400);

	  
-- Создать таблицу employee_salary:
-- id. Serial  primary key, employee_id. Int, not null, unique
-- salary_id. Int, not null
	  
create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
);	  
	  
-- Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary(employee_id,salary_id)
values (4,10),
	   (42,9),
	   (33,3),
	   (77,9),
	   (24,2),
	   (25,13),
	   (85,1),
	   (35,3),
	   (1,3),
	   (60,1),
	   (57,10),
	   (62,2),
	   (34,11),
	   (53,7),
	   (7,7),
	   (5,9),
	   (31,7),
	   (63,10),
	   (71,11),
	   (6,6),
	   (2,13),
	   (73,14),
	   (43,3),
	   (48,14),
	   (38,5),
	   (55,6),
	   (80,15),
	   (11,4),
	   (3,12),
	   (8,2),
	   (15,8),
	   (36,9),
	   (75,1),
	   (81,3),
	   (9,13),
	   (45,4),
	   (72,14),
	   (10,10),
	   (70,6),
	   (83,11);


-- Создать таблицу roles:
-- id. Serial  primary key, role_name. int, not null, unique
	  
create table roles (
	id serial primary key,
	role_name int not null unique
); 
	  
-- Поменять тип столба role_name с int на varchar(30)

alter table roles 
alter column role_name type varchar(30) using role_name::varchar(30);  

-- Наполнить таблицу roles 20 строками:

insert into roles(role_name)
values ('Junior Python developer'),
      ('Middle Python developer'),
      ('Senior Python developer'),
      ('Junior Java developer'),
      ('Middle Java developer'),
      ('Senior Java developer'),
      ('Junior JavaScript developer'),
      ('Middle JavaScript developer'),
      ('Senior JavaScript developer'),
      ('Junior Manual QA engineer'),
      ('Middle Manual QA engineer'),
      ('Senior Manual QA engineer'),
      ('Project Manager'),
      ('Designer'),
      ('HR'),
      ('CEO'),
      ('Sales manager'),
      ('Junior Automation QA engineer'),
      ('Middle Automation QA engineer'),
      ('Senior Automation QA engineer');

     
 -- Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (âíåøíèé êëþ÷ äëÿ òàáëèöû employees, ïîëå id)
-- role_id. Int, not null (âíåøíèé êëþ÷ äëÿ òàáëèöû roles, ïîëå id)
        
create table roles_employee(
     	id serial primary key,
     	employee_id int not null unique,
     	role_id int not null,
     	foreign key (employee_id)
     		references employees(id),
     	foreign key (role_id)
     		references roles(id)
     );
    
 -- Наполнить таблицу roles_employee 40 строками:
    
insert into roles_employee(employee_id,role_id)
values (7,2),
       (20,4),
       (3,9),
       (5,13),
       (23,4),
       (11,2),
       (10,9),
       (22,13),
       (21,3),
       (34,4),
       (6,7),
       (40,15),
       (25,13),
       (8,19),
       (56,20),
       (37,18),
       (9,16),
       (1,14),
       (64,13),
       (48,12),
       (32,17),
       (36,5),
       (27,15),
       (69,11),
       (44,20),
       (38,2),
       (59,4),
       (29,18),
       (19,2),
       (54,6),
       (2,2),
       (4,18),
       (66,13),
       (55,14),
       (70,2),
       (52,1),
       (42,9),
       (67,17),
       (39,20),
       (68,4);
      
select * from roles_employee;
