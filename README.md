# 🎬 Netflix Data Analysis using SQL and Power BI

## 📘 Project Overview
This project analyzes Netflix titles using *SQL* and *Power BI* to uncover insights into the platform’s content trends.  
It demonstrates end-to-end data analytics — from *data cleaning and transformation in SQL* to *dashboard creation in Power BI*.

---

## 🧮 Tools & Technologies
- *SQL Workbench* – Data extraction, joins, and transformations  
- *Power BI* – Data modeling, DAX measures, and dashboard visualization  
- *Excel / CSV* – Used for initial data source connection  

---

## 🧱 SQL Analysis Steps
1. *Table Creation & Data Import*
   - Created database schema and imported Netflix dataset.
2. *Data Cleaning*
   - Removed duplicates, standardized text fields, and handled null values.
3. *Exploratory Queries*
   - Analyzed content distribution by type, country, and release year.
4. *Joins and Window Functions*
   - Joined related tables to identify overlapping trends.
   - Used window functions for ranking and cumulative insights.
5. *Business Insights*
   - Extracted meaningful KPIs like most common ratings, content growth, and type-based breakdown.

---
## 📊 Power BI Dashboard

### *Visuals Created*
- *KPI Cards*
  - Total Titles  
  - Total Movies  
  - Total TV Shows  
- *Donut Chart*
  - Count of Show ID by Type and Age Group  
- *Bar Chart*
  - Count of Cast by Rating  
- *Slicers*
  - Country, Release Year, and Type

---

### *DAX Measures Used*
```DAX
Total Titles = DISTINCTCOUNT('netflix_titles'[show_id])
Total Movies = CALCULATE([Total Titles], 'netflix_titles'[type] = "Movie")
Total TVShows = CALCULATE([Total Titles], 'netflix_titles'[type] = "TV Show")
----

## 📁 Repository Contents
| Folder/File | Description |
|--------------|-------------|
| *Data cleaning.sql* | SQL script for removing duplicates, nulls, and formatting |
| *table creation.sql* | SQL script for table structure and schema creation |
| *age group classification.sql* | Script for categorizing shows by age group |
| *regional content distribution.sql* | Analysis of regional Netflix content |
| *windows functions.sql* | Query for ranking and advanced SQL insights |
| *Netflix Dashboard.pbix* | Power BI dashboard file |
| *Netflix_PowerBI_SQL_Final_Report.docx* | Final report and explanation |
| *README.md* | Project documentation |

----
## 📁 Repository Structure

- [Dataset](./Dataset) → Contains raw and cleaned Netflix dataset files.
- [SQL FILES](./SQL%20FILES) → SQL scripts for data exploration, cleaning, and insights.
- [POWERBI FILES](./POWERBI%20FILES) → Power BI dashboards and data model files.
- [Reports](./Reports) → Final reports and project documentation.

-----

## 💡 Key Insights
- Most Netflix content is *Movies* compared to TV Shows.  
- *TV-MA* and *TV-14* are the most frequent content ratings.  
- Strong growth trend in content addition after *2015*.  
- *United States* and *India* are the top content producers.  
- Drama, Comedy, and Action dominate the platform globally.

----

### 🚀 *Add Future Enhancements*
```markdown
## 🚀 Future Enhancements
- Add *Python automation* for ETL and data preprocessing.  
- Include *predictive visuals* for upcoming content trends.  
- Use *Power BI Service* for publishing interactive dashboards online.  
- Integrate with Netflix API for real-time updates.
----
## 👩‍💻 Author
*Shrutika*  
💼 Data Analyst | SQL | Power BI | Data Visualization  
🔗 [LinkedIn Profile](www.linkedin.com/in/shrutikakole)
----
## 🪪 License
This project is licensed under the [MIT License](LICENSE).





