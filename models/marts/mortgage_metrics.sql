{{ config(materialized='table') }}

with loans as (
    select * from {{ ref('stg_mortgage_data') }}
),

metrics as (
    select
        state,
        loan_type,
        count(*) as num_applications,
        avg(loan_amount) as avg_loan_amount,
        sum(case when settlement_date is not null then 1 else 0 end) as num_settled,
        sum(case when withdrawn_date is not null then 1 else 0 end) as num_withdrawn,
        max(settlement_date) as latest_settlement,
        count(distinct banker_id) as num_unique_bankers
    from loans
    group by state, loan_type
)

select * from metrics
