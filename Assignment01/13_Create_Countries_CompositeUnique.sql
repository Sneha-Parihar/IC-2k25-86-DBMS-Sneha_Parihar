create table countries7(
  country_id int,
  country_name varchar(40),
  region_id int,
  unique(country_id,region_id)
  );

