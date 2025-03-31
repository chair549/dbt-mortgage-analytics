{{ config(materialized='table') }}

with source as (
    select * from {{ source('mortgage_analytics', 'raw_mortgage_data') }}
),

cleaned as (
    select
        application_submission_id as application_id,
        customer_id,
        upper(customer_residential_state) as state,
        cast(loan_amount as double) as loan_amount,
        lower(primary_loan_type) as loan_type,
        loan_purpose_level_1 as purpose_level_1,
        loan_purpose_level_2 as purpose_level_2,
        banker_id,
        source_of_business,
        latest_workflow_stage as workflow_stage,
        cast(application_creation_date as date) as app_created_date,
        cast(latest_stage_date as date) as stage_date,
        cast(conditional_approval_date as date) as cond_approval_date,
        cast(unconditional_approval_date as date) as uncond_approval_date,
        cast(settlement_date as date) as settlement_date,
        cast(withdrawn_dte as date) as withdrawn_date,
        cast(appt_to_app_time as double) as appt_to_app_time,
        cust_region_type
    from source
)

select * from cleaned
