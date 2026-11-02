select manager_id, min(salary) as lowest_salary from employees where manager_id is not null group by manager_id order by lowest_salary asc;
