select department_id,avg(salary) as average_salary,count(*) as employee_count from employees group by department_id having count(*) > 10;
