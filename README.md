# 🏡 Mortgage Analytics Project (dbt + Databricks)

This project demonstrates a real-world data transformation pipeline using **dbt Cloud** and **Databricks**, designed for clean, documented analytics and business intelligence.

---

## 🚀 Tools Used

- **Databricks SQL Warehouse** – Data storage and compute
- **dbt Cloud** – Data transformation, testing, documentation
- **Power BI**  – Dashboard & visualization layer

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

<pre> [dbt-mortgage-analytics/
├── models/
│   ├── staging/
│   │   ├── src_mortgage_data.yml       # Source config + tests
│   │   └── stg_mortgage_data.sql       # Cleaned raw mortgage data
│   └── marts/
│       └── mortgage_metrics.sql        # Aggregated KPIs for dashboarding
├── dbt_project.yml                     # dbt project configuration
└── README.md                           # Project documentation
]  </pre>
---

## 📊 Dashboard (Power BI or CSV Export)

This project includes a Power BI report that visualizes key mortgage KPIs from the dbt-transformed dataset.

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
