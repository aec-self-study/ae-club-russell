

  create or replace view `aec-students`.`dbt_russell`.`my_second_dbt_model`
  OPTIONS()
  as -- Use the `ref` function to select from other models

select *
from `aec-students`.`dbt_russell`.`my_first_dbt_model`
where id = 1;

