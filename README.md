# 🏡 Mortgage Analytics Project (dbt + Databricks)

This project demonstrates a real-world data transformation pipeline using **dbt Cloud** and **Databricks**, designed for clean, documented analytics and business intelligence.

---

## 🚀 Tools Used

- **Databricks SQL Warehouse** – Data storage and compute
- **dbt Cloud** – Data transformation, testing, documentation
- **Power BI** *(optional next step)* – Dashboard & visualization layer

---

## 📊 Data Overview

- Source: Manually uploaded mortgage applications CSV
- Raw table: `workspace.mortgage_analytics.raw_mortgage_data`
- Staging model: `stg_mortgage_data` – cleans and casts raw data
- Metrics model: `mortgage_metrics` – aggregates insights like:
  - Loan count by state and type
  - Average loan amount
  - Settled vs withdrawn applications
  - Banker performance

---

## 🧪 Data Quality

Includes **automated tests** using dbt:
- `not_null` and `unique` constraints on key fields
- Source freshness & structure defined in YAML
- Re-runnable, documented, and testable transformations

---

## 🧠 Project Structure

models/
├── staging/
│   ├── src_mortgage_data.yml        # Defines source table and tests
│   └── stg_mortgage_data.sql        # Cleans and casts raw mortgage data
├── marts/
│   └── mortgage_metrics.sql         # Aggregated metrics for dashboarding
dbt_project.yml                      # dbt config file
README.md                            # Project overview and documentation

---

## 📈 Dashboard (Power BI or CSV Export)

Cleaned data from `mortgage_metrics` is ready for Power BI or export as a CSV for visualization.

---

## ✅ Skills Showcased

- dbt Cloud usage (sources, models, tests, docs)
- SQL transformations on Databricks
- Analytics engineering pipeline setup
- GitHub integration for version control

---

## 📌 Links

- **dbt Docs**: [View Lineage & Docs](https://cloud.getdbt.com/#!/projects/401827/docs)
- **Databricks Workspace**: [SQL Warehouse](https://dbc-15d988a4-2e10.cloud.databricks.com/compute/sql-warehouses)
