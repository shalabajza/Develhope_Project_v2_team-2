-- categories with the total number of installing numbers in each category

SELECT 
	Category, 
	SUM(Installs) AS total_installs 
FROM googleplaystore_clean gc
GROUP BY Category
ORDER BY total_installs DESC;

-- total prices of each paid app in each category (the summation of all prices in the same category)

SELECT 
	Category, 
	ROUND(SUM(price),2) AS total_price_per_app
FROM googleplaystore_clean gc
GROUP BY Category
ORDER BY total_price_per_app DESC;

-- total profit of each category by multiplying the price by the number of installs

SELECT 
	Category,
	ROUND(SUM(Price * Installs),2) AS total_profit
FROM googleplaystore_clean gc 
GROUP BY Category 
ORDER BY total_profit DESC;