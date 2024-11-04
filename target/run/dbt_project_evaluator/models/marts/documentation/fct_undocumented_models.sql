
  create or replace   view GDP_SANDBOX.STAGING.fct_undocumented_models
  
   as (
    with

all_resources as (
    select * from GDP_SANDBOX.STAGING.int_all_graph_resources
    where not is_excluded

),

final as (

    select
        resource_name,
        model_type

    from all_resources
    where not is_described and resource_type = 'model'

)

select * from final



    

    
    

    

    


  );

