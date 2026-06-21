# Video Game Market & Developer Analytics (SQL Portfolio Project)

## Project Overview
An enterprise-grade data analysis project built using **MySQL** to evaluate revenue generation, market positioning, and pricing structures for top-tier video game titles and their respective development studios.

---

## Key Core Analytics Demonstrated:
* **Advanced Joins:** Multi-table relationship matching via `INNER JOIN` logic.
* **Conditional Segmentation:** Dynamically categorizing products into strategic tiers using `CASE WHEN` conditioning.
* **Aggregate Reporting:** Computing complex revenue metrics (`SUM`, multiplication) grouped efficiently by enterprise attributes.

---

## Technical Architecture & Database Schema
The database architecture comprises two relational entities linked via a unique transactional identifier (`game_id`).

### 1. Gaming Sales Entity (`gaming_sales`)
| Field Name | Data Type | Constraint | Description |
| :--- | :--- | :--- | :--- |
| `game_id` | INT | PRIMARY KEY | Unique identifier for each game title |
| `game_name` | VARCHAR(50) | - | Legal market name of the product |
| `category` | VARCHAR(50) | - | Target genre of the video game |
| `price` | INT | - | Retail cost per unit (USD) |
| `copies_sold` | INT | - | Total volume units sold globally |

### 2. Game Developers Entity (`game_developers`)
| Field Name | Data Type | Constraint | Description |
| :--- | :--- | :--- | :--- |
| `game_id` | INT | PRIMARY KEY | Foreign reference key |
| `game_name` | VARCHAR(50) | - | Market name |
| `developer_company`| VARCHAR(50) | - | Parent studio or publisher name |

---

## Business Queries & Insights Delivered

### Query A: Premium Pricing Segmentation Report
Identifies high-value marketplace items priced over $30 and appends custom financial risk tags (`EXPENSIVE` / `BUDGET`) to streamline inventory positioning.

### Query B: Total Revenue Generation by Developer
Aggregates global unit performance across publishers to determine the exact cash-flow contribution of each partner studio, sorted in strict descending order.

---
**Author:** Vijay (Kaizenboi)  
**Role:** Junior Data Analyst / SQL Developer
