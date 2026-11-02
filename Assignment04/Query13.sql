select job_id,max(salary) as maximum_salary from employees group by job_id having max(salary)>=4000;
