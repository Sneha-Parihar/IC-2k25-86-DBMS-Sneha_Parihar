select job,round(avg(salary),2) from employees where job not in ('Programmer') group by job;
