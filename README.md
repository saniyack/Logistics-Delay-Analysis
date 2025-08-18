**LOGISTICS DELAY ANALYSIS**  
<img width="1280" height="720" alt="Image" src="https://github.com/user-attachments/assets/c4dd278a-eb1f-479e-a6d8-6bdcdd346ea5" />


## Overview  
This project analyzes **144K+ delivery records** to uncover:  
- **Delay trends** across routes, destinations, and days  
- **On-time vs delayed deliveries** and contributing factors  
- **Impact of route type, source centers, and trip duration**  
- **Interactive dashboards** for real-time decision-making  


## Key Insights  
- Only **10.3% of deliveries** were on time → **89.7% delayed**
- **Full Truck Load (FTL)** routes had higher delays & variation
- **Haryana** reported the **longest delivery duration (164K hrs)**, Tamil Nadu the shortest (20.7K hrs)
- **Source IND000000ACB** contributed **13.6% of total delays**
- **Weekday deliveries** dominated (73.7%) compared to weekends (26.3%)  


## Tech Stack  
| Tool        | Purpose |
|-------------|---------|
| **Python**  | Data cleaning, feature engineering, EDA, delay trend analysis |
| **R**       | Statistical tests (t-test, ANOVA, Z-test, Chi-square, F-test) |
| **Tableau** | Interactive dashboards & storytelling |  


##  Tableau Dashboards  
1. **Delay Trend Over Time** – min delay on Day 2, max on Day 22  
2. **Top 10 Destinations** – delays highest in **Chhattisgarh**, lowest in **Madhya Pradesh**  
3. **Avg Delivery Duration by State** – Haryana vs Tamil Nadu  
4. **Summary Table** – on-time deliveries, longest delay, avg delay, total trips  
5. **Story Mode** – sequential walkthrough of delivery insights  


## Dataset  
**Source:**  Logistics Dataset (`delhivery.csv`)  
**Size:** ~144,000 records  
**Key Columns:**  
- `trip_duration_hours`, `route_type`  
- `source_center`, `destination_center`  
- `segment_actual_time`, `segment_osrm_time`  
- `delay_minutes`, `day_type`

  ## Dashboard preview

  <img width="1600" height="900" alt="Image" src="https://github.com/user-attachments/assets/5de2e597-b500-4d90-ad72-622172d66fe9" />

