# Football Championship Database

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-17-blue?logo=postgresql)
![SQL](https://img.shields.io/badge/SQL-DDL%20%7C%20DML-blue)
![License](https://img.shields.io/badge/License-MIT-green)

A relational database project developed in **PostgreSQL** to model a football championship and generate the league table through SQL queries.

This project demonstrates the complete database development process, from logical data modeling to schema creation, data population, and analytical queries.

---

## Overview

The database models a football championship consisting of:

* 4 teams
* 4 stadiums
* 12 matches (home and away format)

Based on the recorded match results, a SQL query generates the final league table, including:

* Team name
* Total points
* Matches played
* Goal difference
* Number of victories

The ranking follows the official criteria:

1. Total points
2. Number of victories
3. Goal difference

---

## Technologies

* PostgreSQL
* SQL (DDL and DML)
* DB Designer

---

## Project Structure

```text
football-championship-database/
│
├── docs/
│   └── logical-model.png
│
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_constraints.sql
│   ├── 03_insert_data.sql
│   └── 04_classification_query.sql
│
├── LICENSE
└── README.md
```

---

## Database Model

The database is composed of three main entities:

* **Teams**
* **Stadiums**
* **Matches**

Each match stores:

* Home team
* Away team
* Stadium
* Match date
* Round
* Final score

The logical model is available in:

```text
docs/logical-model.png
```

---

## Database Schema

The project includes:

* Table creation (DDL)
* Primary keys
* Foreign keys
* Referential integrity constraints
* Sample data insertion (DML)

---

## League Table Query

The championship table is generated dynamically from the match results.

The query calculates:

* Points (3 for a win, 1 for a draw, 0 for a loss)
* Matches played
* Goal difference
* Victories

The implementation makes use of:

* `JOIN`
* `GROUP BY`
* `CASE`
* `UNION ALL`
* Aggregate functions (`SUM` and `COUNT`)

---

## Sample Result

| Team      | Points | Matches | Goal Difference | Victories |
| --------- | -----: | ------: | --------------: | --------: |
| São Paulo |     16 |       6 |               6 |         5 |
| Palmeiras |     10 |       6 |               5 |         3 |
| Coritiba  |      6 |       6 |               0 |         1 |
| Vitória   |      1 |       6 |             -11 |         0 |

---

## Running the Project

Execute the SQL scripts in the following order:

```text
01_create_tables.sql
02_constraints.sql
03_insert_data.sql
04_classification_query.sql
```

---

## Learning Outcomes

This project applies several fundamental concepts of relational databases, including:

* Entity-Relationship Modeling
* Relational Schema Design
* Primary and Foreign Keys
* Referential Integrity
* SQL DDL and DML
* Aggregation Queries
* Championship Ranking Logic

---

## License

This project is available under the MIT License.
