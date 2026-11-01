create table jobs1(
  job_id int not null unique primary key,
  job_title varchar(35) not null default'',
  min_salary decimal(6,0) default 8000,
  max_salary decimal(6,0) default null
  );
