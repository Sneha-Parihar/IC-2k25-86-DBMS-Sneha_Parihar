use stud;

CREATE TABLE departmentss
(
    department_id DECIMAL(4,0) NOT NULL PRIMARY KEY,
    department_name VARCHAR(30) NOT NULL,
    manager_id DECIMAL(6,0),
    location_id DECIMAL(4,0)
) ENGINE=InnoDB;


CREATE TABLE jobss
(
    job_id VARCHAR(10) NOT NULL PRIMARY KEY,
    job_title VARCHAR(35) NOT NULL,
    min_salary DECIMAL(6,0),
    max_salary DECIMAL(6,0)
) ENGINE=InnoDB;


CREATE TABLE employeess
(
    employee_id DECIMAL(6,0) NOT NULL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(25) NOT NULL,
    email VARCHAR(25) NOT NULL,
    phone_number VARCHAR(20),
    hire_date DATE NOT NULL,
    job_id VARCHAR(10) NOT NULL,
    salary DECIMAL(8,2),
    commission DECIMAL(8,2),
    manager_id DECIMAL(6,0),
    department_id DECIMAL(4,0),

    FOREIGN KEY (department_id)
        REFERENCES departments(department_id),

    FOREIGN KEY (job_id)
        REFERENCES jobs(job_id)
) ENGINE=InnoDB;
