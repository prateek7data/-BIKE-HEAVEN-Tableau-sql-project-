The Bike Haven Sales Dashboard
Introduction
Welcome to "The Bike Haven" Sales Dashboard project! This repository showcases an interactive and informative Tableau dashboard created for The Bike Haven, a thriving bike shop in San Francisco. The goal is to provide insights into sales performance, customer trends, and product categories.

Project Overview
SQL Data Preparation
I implemented several SQL processes to prepare and optimize the data for the Tableau dashboard:

Data Restoration:

Restored the provided .tar database file into pgAdmin, containing tables such as customer, sales, date, product, category, subcategory, and geography.
Table Merging:

Utilized SQL to merge tables strategically, combining product, category, and subcategory data.
Joined the customer and geography tables for enriched insights.
Column Selection and Data Cleansing:

Removed unnecessary columns to focus on relevant data.
Cleaned and processed the data to enhance its quality.
Data Extraction for Tableau:

Extracted the refined data in CSV format from PostgreSQL, making it ready for seamless integration into Tableau Desktop.
Tableau Dashboard
Explore the Tableau dashboard to gain valuable insights into "The Bike Haven" sales performance. The dashboard includes:

Top 10 products by sales amount
Top 10 customers
Sales figures vs. budget
Sales figures by region/city
Product categories vs. sales amount
Instructions to Use
Clone the Repository:

bash
Copy code
git clone https://github.com/your-username/The-Bike-Haven-Sales-Dashboard.git
SQL Data Preparation:

Restore the provided .tar database file into pgAdmin.
Execute the SQL queries provided in the SQL Data Preparation section of this README.
Tableau Dashboard:

Open Tableau Desktop.
Connect to the PostgreSQL database or import the CSV files generated during SQL data preparation.
Load the Tableau workbook file (The_Bike_Haven_Sales_Dashboard.twb) and explore the visualizations.
Additional Information:

Feel free to refer to the video demonstration for a walkthrough of the dashboard's interactivity.
Feedback and Contributions
We welcome any feedback, suggestions, or contributions to enhance "The Bike Haven" Sales Dashboard. Feel free to open an issue or create a pull request.# -BIKE-HEAVEN-Tableau-sql-project-
