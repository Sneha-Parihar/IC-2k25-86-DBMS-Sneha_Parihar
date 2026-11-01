USE stud;
CREATE TABLE departments (
    department_id DECIMAL(4,0) NOT NULL,
    department_name VARCHAR(30) NOT NULL,
    manager_id DECIMAL(6,0) NOT NULL,
    location_id DECIMAL(4,0),
    PRIMARY KEY (department_id, manager_id)
);
CREATE TABLE employees (
    employee_id INT UNIQUE,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    email VARCHAR(25),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_id VARCHAR(10),
    salary DECIMAL(8,2),
    commission DECIMAL(4,2),
    manager_id DECIMAL(6,0),
    department_id DECIMAL(4,0),

    UNIQUE (department_id, manager_id),

    FOREIGN KEY (department_id, manager_id)
        REFERENCES departments(department_id, manager_id)
);
