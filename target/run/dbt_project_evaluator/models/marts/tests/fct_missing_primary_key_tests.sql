
  create or replace   view GDP_SANDBOX.STAGING.fct_missing_primary_key_tests
  
   as (
    with 

tests as (
    select * from GDP_SANDBOX.STAGING.int_model_test_summary 
    where resource_type in
    (
        'model'
        
    )
),

final as (

    select 
        resource_name, is_primary_key_tested, number_of_tests_on_model, number_of_constraints_on_model
    from tests
    where not(is_primary_key_tested)

)

select * from final



    

    
    

    

    


  );

