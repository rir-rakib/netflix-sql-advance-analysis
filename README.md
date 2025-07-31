# 🎬 Netflix Data Analysis Project (Advanced Level)

This project involves advanced SQL queries and schema design for a dataset containing information about Netflix titles (Movies and TV Shows). The goal is to demonstrate SQL proficiency through 15 complex tasks and meaningful insights from real-world data.

---

## 📁 Files Included

- netflix_data.csv – Original dataset (provided by user)
- schema.sql – SQL table creation script
- queries.sql – 15 Advanced SQL queries with solutions
- README.md – Project documentation (this file)

---

## 🧱 Database Schema

A single table is created named netflix_titles with the following structure:

| Column Name    | Data Type | Description                          |
|----------------|-----------|--------------------------------------|
| show_id        | VARCHAR   | Unique identifier for each show      |
| type           | VARCHAR   | "Movie" or "TV Show"                 |
| title          | TEXT      | Title of the show                    |
| director       | TEXT      | Director's name                      |
| cast           | TEXT      | List of actors                       |
| country        | TEXT      | Country of origin                    |
| date_added     | DATE      | Date added to Netflix                |
| release_year   | INT       | Year of release                      |
| rating         | VARCHAR   | Content rating (PG, TV-MA, etc.)     |
| duration       | VARCHAR   | Duration (minutes or seasons)        |
| listed_in      | TEXT      | Categories/Genres                    |
| description    | TEXT      | Short summary                        |

---

## 🔍 Advanced SQL Tasks (15)

Each query focuses on real-world problems like:

- Extracting insights from genres
- Working with array-based text columns
- Date filtering and ordering
- Text matching using ILIKE
- String parsing with PostgreSQL functions
- Aggregation with grouping
- Filtering on calculated values

These are written in standard *PostgreSQL* syntax.

---

## 🛠 How to Use

1. Import the CSV into your PostgreSQL database.
2. Run the schema.sql file to create the table.
3. Load data using the COPY command or import tool.
4. Execute queries from queries.sql.

---

## 📌 Credits

Dataset: Provided by user  
Project Author: [Your Name]  
Platform: PostgreSQL
