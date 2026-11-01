create table job_history(
  employee_id int not null unique,
  start_date date,
  end_date date,
  job_id varchar(10),
  department_id int,
  foreign key(job_id) references jobs(job_id)
  );
