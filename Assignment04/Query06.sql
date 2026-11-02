select max(salary) as highest_salary, min(salary) as lowest_salary,sum(salary) as total_salary,round(avg(salary),2) as average_salary from employees;
