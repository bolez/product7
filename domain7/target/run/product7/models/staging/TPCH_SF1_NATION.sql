
  
    

        create or replace transient table domain7_db.product7.TPCH_SF1_NATION
         as
        (with source as (

    select * from snowflake_sample_data.tpch_sf1.nation

),

renamed as (

    select
        n_nationkey,
        n_name,
        n_regionkey,
        n_comment

    from source

)

select * from renamed
        );
      
  