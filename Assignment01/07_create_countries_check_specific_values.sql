create table countries2( 
  country_id int,
  country_name varchar(40),
  region_id int,
  check(country_name in('italy','india','china'))
  );
