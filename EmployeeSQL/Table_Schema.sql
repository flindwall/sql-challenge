-- Table Schema
-- departments table
DROP TABLE IF EXISTS departments;

CREATE Table "departments" (
	"dept_no" VARCHAR NOT NULL,
	"dept_name" VARCHAR NOT NULL,
	CONSTRAINT "pk_departments" PRIMARY KEY ("dept_no")
);



-- employee table
DROP TABLE IF EXISTS employee;

CREATE TABLE "employee" (
	"emp_no" INT NOT Null,
	"emp_title_id" VARCHAR NOT NULL,
	"birth_date" DATE NOT NULL,
	"first_name" VARCHAR NOT NULL,
	"last_name" VARCHAR NOT NULL,
	"sex" VARCHAR NOT NULL,
	"hire_date" DATE NOT NULL,
	CONSTRAINT "pk_employee" PRIMARY KEY ("emp_no")
	);
	


--create department_employee table
DROP TABLE IF EXISTS department_employee;

CREATE TABLE "department_employee" (
	"emp_no" INT NOT NULL,
	"dept_no" VARCHAR NOT NULL);
	


--create department_manager table
DROP TABLE IF EXISTS department_manager;

CREATE TABLE "department_manager" (
	"dept_no" VARCHAR NOT NULL,
	"emp_no" INT NOT NULL);
	


--create salaries table
DROP TABLE IF EXISTS salaries;

CREATE TABLE "salaries" (
	"emp_no" INT NOT NULL,
	"salary" INT NOT NULL);
	

-- titles table
DROP TABLE IF EXISTS titles;

CREATE TABLE "titles" (
	"title_id" VARCHAR NOT NULL,
	"title" VARCHAR NOT NULL,
	CONSTRAINT "pk_titles" PRIMARY KEY ("title_id")
	);


-- create Foreign Keys
ALTER TABLE "department_employee"
ADD CONSTRAINT "fk_department_employee_emp_no"
FOREIGN KEY ("emp_no")
REFERENCES employee ("emp_no");

ALTER TABLE "department_employee"
ADD CONSTRAINT "fk_deparment_employee_dept_no"
FOREIGN KEY ("dept_no")
REFERENCES departments ("dept_no");

ALTER TABLE "department_manager"
ADD CONSTRAINT "fk_department_manager_dept_no"
FOREIGN KEY ("dept_no")
REFERENCES departments ("dept_no");


ALTER TABLE "department_manager"
ADD CONSTRAINT "fk_department_manager_emp_no"
FOREIGN KEY ("emp_no")
REFERENCES employee ("emp_no");

ALTER TABLE "salaries"
ADD CONSTRAINT "fk_salaries_emp_no"
FOREIGN KEY ("emp_no")
REFERENCES employee ("emp_no");

ALTER TABLE "employee"
ADD CONSTRAINT "fk_employee_emp_title_id"
FOREIGN KEY ("emp_title_id")
REFERENCES titles ("title_id");










