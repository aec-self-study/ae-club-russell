-- Use the `ref` function to select from other models

select *
from `aec-students`.`dbt_russell`.`my_first_dbt_model`
where id = 1