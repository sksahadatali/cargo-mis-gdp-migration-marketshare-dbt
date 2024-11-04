
  create or replace   view GDP_SANDBOX.STAGING.fct_undocumented_source_tables
  
   as (
    with

all_resources as (
    select * from GDP_SANDBOX.STAGING.int_all_graph_resources
    where not is_excluded

),

final as (

    select
        resource_name

    from all_resources
    where not is_described and resource_type = 'source'

)

select * from final



    

    
    

    

    


  );

