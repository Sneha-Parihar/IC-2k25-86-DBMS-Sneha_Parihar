elect department_id,first_name,last_name,salary from employees where salary not between 10000 and 15000 and department_id in (30,100) order by department_id asc;
