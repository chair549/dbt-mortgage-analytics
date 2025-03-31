# 🏡 Mortgage Analytics Project (dbt + Databricks)

This project demonstrates a complete, production-style data transformation pipeline using **dbt Cloud** and **Databricks**, with a Power BI dashboard as the final business deliverable. The aim was to replicate a real-world analytics engineering workflow — from raw data ingestion, transformation, and testing, to dashboarding and insights delivery.

---

## 🎯 Why I Built This

I built this project to strengthen my skills in modern data stack tools like **dbt**, **Databricks**, and **Power BI**, while showcasing my ability to:

- Build clean, tested, modular SQL transformations
- Design layered data models (staging → marts)
- Work through the real challenges of cloud-based pipelines
- Document and communicate my thought process as if working on a team

I had **never connected dbt to Databricks before**, and learning how to do that (including configs, tokens, catalogs, and YAML setup) was a key part of the journey. It reflects not just the technical output — but the practical learning process that comes with building an actual pipeline from scratch.

---

## 🚀 Tools Used

- **Databricks SQL Warehouse** – Cloud-based compute and data storage
- **dbt Cloud** – Transformation, testing, documentation, modular SQL
- **Power BI** – Dashboard and business-facing analytics
- **GitHub** – Version control and portfolio hosting

---

## 📊 Power BI Dashboard

The dashboard visualizes key mortgage KPIs sourced from the dbt-transformed tables in Databricks.

It includes:

- Total + average loan amounts
- Settlement vs withdrawal rates
- Loan distribution by size, region, and type
- Approval timelines
- Conditional approval risk bands

📸 Preview:

![Mortgage Dashboard](mortgage_dashboard.PNG)

---

## 🧠 What I Learned (and struggled through)

- 📡 **Connecting dbt to Databricks**: Setting up tokens, profiles.yml, catalogs (`workspace` vs `main`), and schema access was non-trivial. I ran into multiple `NO_SUCH_CATALOG_EXCEPTION` and connection hangs — and learned how to debug them using Databricks SQL Explorer and proper config formatting.
- ⚙️ **Understanding dbt’s flow**: Realized how `sources`, `staging`, and `marts` fit together conceptually and in code.
- 🧪 **Writing modular, tested SQL**: dbt encouraged me to split raw data cleaning into clean staging models before aggregating for final reporting.
- 🔁 **Iteration**: I rebuilt my project from scratch after hitting the dbt Cloud free project limit — this helped solidify my understanding of every part of the pipeline.

---

## 📦 Project Structure

```text
dbt-mortgage-analytics/
├── models/
│   ├── staging/
│   │   ├── src_mortgage_data.yml       # Source config + field-level tests
│   │   └── stg_mortgage_data.sql       # Casts, cleans, standardizes raw data
│   └── marts/
│       └── mortgage_metrics.sql        # Business-facing KPIs & aggregations
├── dbt_project.yml                     # Core dbt config (name, paths, etc.)
└── README.md                           # This file
