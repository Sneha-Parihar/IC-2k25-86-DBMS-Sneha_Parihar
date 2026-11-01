create table jobs(
  job_id varchar(10),
  job_title varchar(35),
  min_salary decimal(6,0),
  max_salary decimal(6,0),
  check(max_salary<=25000)
  );
