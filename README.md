# Regina Transit Network & Accessibility Analysis

## Project Overview

This project analyzes Regina's public transit network to explore how transit stops are distributed across the city's wards and how that distribution relates to population and geographic density.

The analysis combines Python, GeoPandas, SQL, GIS, and Power BI to transform public transit and ward data into an interactive analytical dashboard.

The project focuses on transit-stop coverage rather than claiming to measure overall transit service quality.

## Business Questions

The analysis investigates:

- How are Regina's 1,000 transit stops distributed across the city?
- Which streets contain the largest numbers of recorded transit stops?
- How does transit-stop coverage vary across Regina's 10 wards?
- How many transit stops are available per 1,000 residents?
- How does population relate to the number of transit stops?
- How does population density relate to transit-stop density?
- Which wards have more or fewer stops than a simple population-based expectation?


## Tools & Technologies

- **Python** — data cleaning and analysis
- **Pandas** — data manipulation
- **GeoPandas** — spatial analysis
- **Matplotlib** — data visualization
- **SQL / SQLite** — analytical queries
- **Power BI** — interactive dashboard and KPI reporting
- **Google Colab** — development environment
- **GitHub** — project documentation and version control

## Data

The project uses public geographic data from the City of Regina.

Main datasets include:

- Regina Transit Stops
- Regina Transit Routes
- Regina Ward Boundaries and Population

The transit dataset contains:

- **1,000 transit stops**
- **22 transit routes**
- **166 streets with recorded transit stops**
- **10 Regina wards**

---

## Key Findings

### Transit Stop Coverage

Transit-stop coverage varies substantially between Regina's wards.

**Ward 6**
- 183 transit stops
- Approximately **6.84 stops per 1,000 residents**
- Approximately **67.8% more stops** than the population-based expectation

**Ward 7**
- 146 transit stops
- Approximately **5.91 stops per 1,000 residents**

**Ward 4**
- 50 transit stops
- Approximately **2.26 stops per 1,000 residents**
- Approximately **44.6% fewer stops** than the population-based expectation

---

## Population and Transit Stops

The correlation between ward population and transit-stop count was approximately:

**0.775**

This indicates a positive association between population and the number of recorded transit stops across the 10 wards.

---

## Population Density and Stop Density

The correlation between population density and transit-stop density was approximately:

**0.815**

Denser wards generally tended to have higher concentrations of transit stops in this dataset.

Ward 7 had the highest transit-stop density at approximately:

**13.55 stops per square kilometre**

---

## Population per Transit Stop

Another metric was calculated to compare population with the number of available stops.

Examples:

- Ward 6: approximately **146 residents per stop**
- Ward 7: approximately **169 residents per stop**
- Ward 4: approximately **443 residents per stop**

This is a ward-level ratio and should not be interpreted as the number of passengers using each stop.

---

## Power BI Dashboard

The Power BI dashboard includes:

- Total Transit Stops
- Total Routes
- Total Ward Population
- Streets with Transit Stops
- Transit Stops by Ward
- Stops per 1,000 Residents
- Actual vs Population-Based Expected Stops
- Population vs Transit Stops
- Population per Transit Stop

---

## SQL Analysis

SQL queries were used to analyze:

- Transit stops by ward
- Stops per 1,000 residents
- Wards below population-based expected stop counts
- Population per transit stop
- Transit-stop density
- Highest-density wards

The SQL queries are available in:

`regina_transit_analysis.sql`

---

## Repository Files

`regina_transit_analysis.ipynb`  
Python and GeoPandas analysis.

`regina_transit_analysis.sql`  
SQL analytical queries.

`final_ward_analysis (1).csv`  
Final ward-level analytical dataset.

`Regina_Transit_Analysis.pbix`  
Interactive Power BI dashboard.

---

## Limitations

Transit-stop counts alone do **not** measure overall transit accessibility or service quality.

A complete transit accessibility study would also require information such as:

- Service frequency
- Ridership
- Walking distance to stops
- Operating hours
- Route connectivity
- Travel times
- Vehicle capacity

Therefore, wards with relatively fewer stops should be treated as areas for further investigation rather than automatically classified as underserved.

---

## Future Improvements

Future versions of the project could incorporate:

- Transit service frequency
- GTFS schedule data
- Ridership data
- Walking-distance analysis
- Demographic data
- Employment and destination accessibility
- Interactive geographic maps

---

## Skills Demonstrated

This project demonstrates practical experience with:

**Data Cleaning | Exploratory Data Analysis | SQL | Python | Pandas | GeoPandas | GIS | Data Visualization | Power BI | DAX | Statistical Analysis | Dashboard Design**
