CREATE TABLE IF NOT EXISTS jobs
(
    job_id INT NOT NULL UNIQUE PRIMARY KEY,
    job_title VARCHAR(35) NOT NULL DEFAULT ' ',
    min_salary DECIMAL(6,0) DEFAULT 8000,
    max_salary DECIMAL(6,0) DEFAULT NULL
) ENGINE=InnoDB;
CREATE TABLE IF NOT EXISTS employees
(
    employee_id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    job_id INT,
    salary DECIMAL(8,2),

    FOREIGN KEY (job_id)
        REFERENCES jobs(job_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB;
