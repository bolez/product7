
  
    

        create or replace transient table domain7_db.product7.customer_nation
         as
        (with customer as (

    select * from domain7_db.product7.TPCH_SF1_CUSTOMER

),

nation as (

    select * from domain7_db.product7.TPCH_SF1_NATION

),


final as (

    select c.*, n.n_name from customer as c join nation as n on c.c_nationkey=n.n_nationkey
)

select *
from final
        );
      
  