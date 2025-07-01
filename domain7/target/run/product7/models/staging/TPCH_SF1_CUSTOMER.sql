
  
    

        create or replace transient table domain7_db.product7.TPCH_SF1_CUSTOMER
         as
        (with source as (

    select * from snowflake_sample_data.tpch_sf1.customer

),

renamed as (

    select
        c_custkey,
        c_name,
        c_address,
        c_nationkey,
        c_phone,
        c_acctbal,
        c_mktsegment,
        c_comment

    from source

)

select * from renamed
        );
      
  