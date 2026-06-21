-- ========================================================
-- PROJECT TITLE: Video Game Market & Developer Analytics
-- AUTHOR: Badige Vijay
-- PURPOSE: Enterprise Data Analysis Portfolio Project
-- ========================================================

-- 1. DATABASE SCHEMA SETUP
CREATE DATABASE IF NOT EXISTS gaming_market_db;
USE gaming_market_db;

-- Purane tables ko clean karne ke liye (taaki error na aaye)
DROP TABLE IF EXISTS game_developers;
DROP TABLE IF EXISTS gaming_sales;

-- Create Sales Table with primary key constraints
CREATE TABLE gaming_sales 
   (game_id INT PRIMARY KEY,
    game_name VARCHAR(50),
    category VARCHAR(50),
    price INT,
    copies_sold INT);

-- Create Developers Table linked via game_id
CREATE TABLE game_developers 
   (game_id INT PRIMARY KEY,
    game_name VARCHAR(50),
    developer_company VARCHAR(50));

-- 2. DATA INSERTION
INSERT INTO gaming_sales VALUES 
(1, 'GTA', 'Action', 30, 500),
(2, 'CYBERPUNK', 'RPG', 40, 300),
(3, 'BGMI COINS', 'Strategy', 10, 1000),
(4, 'WITCHER 3', 'RPG', 20, 400),
(5, 'VALORANT POINTS', 'FPS', 15, 800),
(6, 'MINECRAFT', 'Sandbox', 30, 600);

INSERT INTO game_developers VALUES 
(1, 'GTA', 'Rockstar Games'),
(2, 'CYBERPUNK', 'CD Projekt Red'),
(3, 'BGMI COINS', 'Krafton'),
(4, 'WITCHER 3', 'CD Projekt Red'),
(5, 'VALORANT POINTS', 'Riot Games'),
(6, 'MINECRAFT', 'Mojang Studios');

-- 3. ADVANCED BUSINESS ANALYTICS QUERIES

-- Query A: Premium Pricing Segmentation Report (JOIN + CASE WHEN + WHERE)
SELECT s.game_name, s.price, d.developer_company,
       CASE WHEN s.price >= 30 THEN 'EXPENSIVE' ELSE 'BUDGET' END AS price_tag
FROM gaming_sales AS s
INNER JOIN game_developers AS d ON s.game_id = d.game_id
WHERE s.price >= 30;

-- Query B: Total Revenue Generation by Developer (GROUP BY)
SELECT d.developer_company, SUM(s.price * s.copies_sold) AS total_revenue
FROM gaming_sales AS s
INNER JOIN game_developers AS d ON s.game_id = d.game_id
GROUP BY d.developer_company
ORDER BY total_revenue DESC;