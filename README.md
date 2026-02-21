## SurgeFlow-Bengaluru-Analytics

## 📌 Project Overview

This project simulates a ride-hailing platform dataset (10,000+ trips) and builds a complete analytics pipeline:

1. **Data Generation (Python)**
2. **SQL-based Business Analysis**
3. **Star Schema Data Modeling**
4. **Interactive Power BI Dashboard**
5. **Demand Forecasting & Profitability Analysis**

The goal:
👉 Identify revenue drivers
👉 Detect peak demand patterns
👉 Analyze surge pricing impact
👉 Monitor cancellation behavior
👉 Evaluate route profitability

---

## 🛠️ Tech Stack

* **Python** (Pandas, NumPy)
* **SQLite (SQL Queries)**
* **Power BI**
* **Star Schema Data Modeling**
* DAX Measures
* Time Intelligence Calculations

---

## 📂 Dataset Structure

The project follows a **Star Schema** architecture.

### 🔹 Fact Table

* `fact_trips`

  * trip_id
  * driver_id
  * pickup_zone
  * pickup_hour
  * distance_km
  * fare
  * surge_multiplier
  * status

### 🔹 Dimension Tables

* `dim_drivers`
* `dim_routes`
* `dim_zones`

This structure ensures scalable analytics and performance optimization in Power BI.

---

## 📊 Dashboard Pages

---

## 1️⃣ Revenue & Demand Overview

### KPIs:

* 💰 Total Revenue: 3M
* 🚕 Total Trips: 10K
* 💵 Avg Fare: 21.75
* ⚡ Avg Surge Multiplier: 1.16

### Insights:

* Revenue peaks during early morning & late evening hours.
* Whitefield generates highest revenue (~603K).
* Demand distribution is fairly balanced across days.

---

## 2️⃣ Cancellation & Surge Analysis

### KPIs:

* Total Trips
* Cancellation Rate: 5%
* Avg Surge Multiplier
* Total Revenue

### Insights:

* Highest cancellations observed in Jayanagar & Koramangala.
* Surge multiplier 1.0 dominates trip volume.
* High surge does not always correlate with higher cancellations.

---

## 3️⃣ Advanced Analytics & Intelligence

### Features:

✔ Top Route Identification
✔ Peak Surge Zone: Jayanagar
✔ Peak Demand Hour: 03:00 AM
✔ Avg Trip Distance: 13.5 km

### Visual Analytics:

* Route Profitability Heatmap
* Demand vs Fare Scatter Analysis
* Zone-wise Revenue Distribution
* 7-Day Trip Demand Forecast

---

## 📈 Business Insights Generated

* Early morning hours show unexpected demand spikes.
* Whitefield is revenue-dominant but not surge-dominant.
* Jayanagar has highest surge intensity.
* Profitability varies significantly across route combinations.
* Cancellation behavior is zone-sensitive.

---

## 🔎 Key SQL Analysis Performed

* Driver performance ranking
* Revenue aggregation by zone & hour
* Surge impact analysis
* Route profitability comparison
* Cancellation trend analysis
* Time-based grouping using `strftime()`
* Aggregation with GROUP BY, HAVING, ORDER BY

---

## 🎯 What Makes This Project Stand Out

* Not a generic dataset — fully generated & modeled.
* Real SQL queries executed inside Python (SQLite).
* Proper dimensional modeling (Star Schema).
* Multi-page executive dashboard.
* Forecasting component included.
* Business-driven KPI storytelling.

---

## 🚀 How to Run

1. Run `generate_data_py.ipynb` to generate dataset.
2. Load exported CSVs into Power BI.
3. Build relationships based on star schema.
4. Create DAX measures for KPIs.
5. Interact with dashboard.

---

## 📌 Sample Business Questions Answered

* Which zone generates maximum revenue?
* What hour drives peak demand?
* How does surge pricing impact trip count?
* Which routes are most profitable?
* What is the cancellation trend by zone?
* Is demand distance-driven or fare-driven?

---

## 📎 Project Outcome

This project demonstrates:

✔ SQL proficiency
✔ Data modeling skills
✔ Analytical thinking
✔ Business KPI design
✔ Dashboard storytelling
✔ Intermediate DAX capability
