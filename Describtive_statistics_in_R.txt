# -----------------------------
# 📂 Load Data
# -----------------------------
library(readxl)   # For reading Excel files
df <- read_xlsx("C:/Users/mohad/OneDrive/Desktop/wage of gender.xlsx")

# -----------------------------
# 👀 Explore the Data
# -----------------------------
View(df)      # Open spreadsheet-like view of the data
dim(df)       # Number of observations (rows) and variables (columns)
names(df)     # Names of variables
head(df)      # First 6 rows of the dataset
tail(df)      # Last 6 rows of the dataset
glimpse(df)   # Compact overview of data structure

# -----------------------------
# 📊 Frequency Table for Gender
# -----------------------------
table(df$Gender)                          # Counts for each gender
prop.table(table(df$Gender)) * 100        # Percentages for each gender
summarytools::freq(df$Gender)             # Frequency table with count & percentage

# -----------------------------
# 📊 Descriptive Statistics (Wage)
# -----------------------------
mean(df$Wage)    # Mean (average wage)
median(df$Wage)  # Median (middle wage when sorted)

sort(table(df$Wage), decreasing = TRUE )  # Most frequent wage values

min(df$Wage)                # Minimum wage
max(df$Wage)                # Maximum wage
max(df$Wage) - min(df$Wage) # Range (max - min)
summary(df$Wage)            # Summary: min, Q1, median, mean, Q3, max

var(df$Wage)  # Variance (average squared distance from mean)
sd(df$Wage)   # Standard deviation (spread of wages, same unit as wages)

summarytools::descr(df$Wage)  # Full descriptive table (mean, SD, min, max, skewness, kurtosis)

# -----------------------------
# 📊 Interactive Pivot Table
# -----------------------------
library(rpivotTable)
rpivotTable(df)   # Drag and drop Gender & Wage to explore data interactively
