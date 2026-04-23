# Weather Analytics Pipeline (ETL + ELT + Visualization)

## Overview
This project implements an end-to-end **data pipeline** for weather analytics using modern data engineering tools. The pipeline follows the **ETL → ELT → Visualization** workflow, with a stronger focus on **ELT (dbt)** and **data visualization**.

The system ingests raw weather data, transforms it into analytical datasets, and visualizes key insights such as moving averages, rainfall trends, and dry spells.

---

## 🏗️ System Architecture

```
        +------------------+
        |  Raw Data Source |
        +------------------+
                 |
                 v
        +------------------+
        |  Airflow (ETL)   |
        |  - Load raw data |
        +------------------+
                 |
                 v
        +------------------+
        |   Data Warehouse |
        |   (Raw Tables)   |
        +------------------+
                 |
                 v
        +------------------+
        |   dbt (ELT)      |
        | - Transformations|
        | - Models         |
        | - Tests          |
        +------------------+
                 |
                 v
        +------------------+
        | Analytics Tables |
        +------------------+
                 |
                 v
        +------------------+
        | BI Tool          |
        | (Tableau)        |
        +------------------+
```

---

## ⚙️ Technologies Used

- Apache Airflow → Workflow orchestration (ETL + dbt scheduling)
- dbt (Data Build Tool) → ELT transformations
- SQL → Data modeling and transformations
- Python → Airflow DAG implementation
- BI Tool (Tableau) → Visualization


---

## ETL Process (Airflow)

- Loads raw weather data into database tables
- Uses Airflow connections and variables
- Implements SQL transactions with try/catch for idempotency

---

## ELT Process (dbt)

- Moving averages
- Temperature anomalies

Includes models, tests, and snapshots.
Scheduled via Airflow after ETL completion.

---

## 📊 Data Visualization

Dashboards created using Superset / Preset / Tableau.

Features:
- Time-series trends
- Interactive filters
- Weather insights

---

## 🧾 Database Schema

### Raw Table (`weather_data`)
- id (INT)
- date (DATE)
- temperature (FLOAT)
- rainfall (FLOAT)

### Transformed Table (`weather_summary`)
- date (DATE)
- avg_temp (FLOAT)
- rolling_rainfall (FLOAT)
- dry_spell_length (INT)

---

## How to Run

Start Airflow:
```
airflow scheduler
airflow webserver
```

Run dbt:
```
dbt run
dbt test
dbt snapshot
```

---

## Conclusion

End-to-end pipeline demonstrating ETL, ELT, and visualization using modern tools.

---

## Future Work

- Real-time data ingestion
- Advanced analytics

---

## References

- Airflow Docs
- dbt Docs
- BI Tool Docs
