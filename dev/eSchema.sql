DROP DATABASE IF EXISTS employee_db;

CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES department (id)
);

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    manager_id INT
    FOREIGN KEY (manager_id) REFERENCES employee(id),
    FOREIGN KEY (role_id) REFERENCES role (id)

);


INSERT INTO department (name)
VALUES ("Sales"), ("Engineering"), ("Legal"), ("Finance"), ("Marketing");

INSERT INTO role (title, salary, department_id)
VALUES ("Sales Lead", 30000 ,1),  
("Software Engineer", 80000,2),
("Lawyer", 100000, 3),
("Accountant",80000,4),
("Salesperson", 25000 ,1),
("Lead Engineer", 120000,2),
("Legal Team Lead", 110000, 3),



INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Delgado", "Samuel", 1),
("Bilaal", "Garner", 2),
("Guy", "Loire",3),
("Shea","Ivan",4);
("Church", "April",3),
("Kingston","Alston",1);
("Velazquez", "Silvia",3),
("McChalis","Ashlee",3);