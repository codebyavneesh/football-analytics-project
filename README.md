# ⚽ Football Games Analysis Project

A complete end-to-end data analysis project on football games data — covering data cleaning, SQL queries, Python analysis, visualizations, and an interactive Power BI dashboard.

---

## 📁 Project Structure

```
football-analytics-project/
└── football_games_project/
    ├── datasets/
    │   ├── full_Data.csv
    │   ├── ClubNames.csv
    │   ├── NationalNames.csv
    │   └── PlayerNames.csv
    ├── data_exploration&cleaning.ipynb
    ├── football_games_project.ipynb
    ├── football-project.sql
    ├── dashboard.png
    └── README.md
```

---

## 🛠️ Tools & Technologies Used

| Tool | Purpose |
|------|---------|
| **MySQL** | Database creation, querying, aggregations |
| **Python** | Data analysis and scripting |
| **Pandas** | Data manipulation and cleaning |
| **Matplotlib** | Data visualization |
| **Seaborn** | Statistical visualizations |
| **MySQL + Python** | Database connection via `mysql-connector-python` |
| **Power BI** | Interactive dashboard |

---

## 📊 Dataset

The dataset contains football games data with the following files:

- **full_Data.csv** — Complete match-level data
- **ClubNames.csv** — Club name mappings
- **NationalNames.csv** — National team name mappings
- **PlayerNames.csv** — Player name mappings

---

## 🔍 Project Workflow

### 1. Data Exploration & Cleaning (`data_exploration&cleaning.ipynb`)
- Loaded raw CSV files using Pandas
- Handled missing values and duplicate records
- Standardized column names and data types
- Merged club, national, and player name datasets

### 2. MySQL Analysis (`football-project.sql`)
- Created database and imported cleaned data
- Wrote SQL queries for:
  - Top performing clubs and players
  - National team statistics
  - Match result aggregations
  - Group By and aggregation analysis

### 3. Python + MySQL Connection (`football_games_project.ipynb`)
- Connected Python to MySQL using `mysql-connector-python`
- Fetched query results directly into Pandas DataFrames
- Performed further analysis on fetched data

### 4. Visualizations (Matplotlib & Seaborn)
- Bar charts for club and player comparisons
- Distribution plots for match statistics
- Heatmaps for correlation analysis
- Trend analysis using line plots

### 5. Power BI Dashboard (`dashboard.png`)
- Built an interactive dashboard with filters and slicers
- **KPI Cards:** Total Players, Total Rating, Nationality Count, Avg Speed
- **Map Visual:** Nationality-wise geographic distribution of players
- **Pie Chart:** Max Rating by Club (Zenit, Zulte-W, Yokoha, ZagAGA, Yaovil T)
- **Scatter Chart:** Average Speed vs Average Age by Club
- **Bar Chart:** Max Rating by Player Name
- **Filters/Slicers:** Month slicer, Club filter, Nationality filter, Name filter

---

## 📸 Dashboard Preview

![Power BI Dashboard]([dashboard.png](https://github.com/codebyavneesh/football-analytics-project/blob/main/football_games_project/Dashboard.png))

> **Dashboard Highlights:**
> - 📊 **17.34K** Players | **1M** Total Rating | **160** Nationalities | **65.51** Avg Speed
> - 🗺️ World map showing player nationality distribution
> - 🍩 Max Rating by Club — Zenit (22.59%), Yeovil T (20%), ZagÃÂA (19.83%), Zulte-W (17.91%)
> - 📈 Avg Speed vs Avg Age by Club — Manchester, Napoli, Juventus, V.Guima, Liverpool, Mode FK, Gillingham, Milan, PSG
> - 📊 Max Rating by Player Name — Zoran, Zurotuza, Zouhair, Zydrunas and more

---

## ▶️ How to Run

**1. Clone the repository**
```bash
git clone https://github.com/codebyavneesh/football-analytics-project.git
cd football-analytics-project/football_games_project
```

**2. Install Python dependencies**
```bash
pip install pandas matplotlib seaborn mysql-connector-python jupyter
```

**3. Set up MySQL**
- Open MySQL Workbench or any MySQL client
- Run `football-project.sql` to create the database and tables

**4. Run Jupyter Notebooks**
```bash
jupyter notebook
```
- Open `data_exploration&cleaning.ipynb` first
- Then open `football_games_project.ipynb`

**5. Power BI Dashboard**
- Open `dashboard.png` to view the dashboard preview

---

## 🎯 Key Insights

- Analyzed player data across multiple clubs and national teams
- Tracked **Max Rating by Club** — top clubs include Zenit, Zulte-W, Yokoha, and others
- Visualized **geographic distribution** of players by nationality using map visual
- Compared **Average Speed vs Average Age** across clubs using scatter plot
- Identified **Max Rating by Player Name** using bar chart analysis
- Dashboard includes **month-wise filtering** for time-based analysis

---

## 👤 Author

**Avneesh**
- GitHub: [@codebyavneesh](https://github.com/codebyavneesh)
- LinkedIn: [linkedin.com/in/codebyavneesh](https://linkedin.com/in/codebyavneesh)

---

> ⭐ If you found this project helpful, consider giving it a star!
