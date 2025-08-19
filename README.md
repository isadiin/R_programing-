# 📊 Wage and Gender Analysis in R

## 📌 Project Overview
This project demonstrates basic **descriptive data analysis in R** using a dataset containing information on `Wage` and `Gender`.  
The dataset is used for practice (simulated / demo data) and the goal is to showcase **R skills** for exploring, summarizing, and visualizing data.

---

## 🛠️ Tools & Libraries
- R  
- [readxl](https://cran.r-project.org/web/packages/readxl/index.html) → Import Excel data  
- [dplyr](https://cran.r-project.org/web/packages/dplyr/index.html) → Data manipulation  
- [summarytools](https://cran.r-project.org/web/packages/summarytools/index.html) → Descriptive statistics  
- [rpivotTable](https://cran.r-project.org/web/packages/rpivotTable/index.html) → Interactive pivot tables  

---

## 📂 Steps in the Analysis
1. **Load Data**  
   - Read Excel dataset using `readxl::read_xlsx()`.  

2. **View & Explore Data**  
   - Functions: `View()`, `dim()`, `names()`, `head()`, `tail()`, `glimpse()`.  

3. **Frequency Analysis (Gender)**  
   - `table()` → Counts  
   - `prop.table()` → Percentages  
   - `freq()` → Full frequency distribution  

4. **Descriptive Statistics (Wage)**  
   - Central tendency: `mean()`, `median()`  
   - Spread: `min()`, `max()`, `range()`, `var()`, `sd()`, `summary()`  
   - Full descriptive report: `descr()`  

5. **Interactive Pivot Table**  
   - `rpivotTable(df)` to drag-and-drop variables (e.g., Wage by Gender).  

---

## 📊 Example Insights
- Average and median wages are calculated.  
- Wage distribution is summarized (min, max, quartiles).  
- Gender distribution is shown in counts and percentages.  
- Interactive pivot table allows dynamic exploration.  

