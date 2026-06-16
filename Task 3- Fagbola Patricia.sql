SELECT COUNT(*) AS total_orders
FROM sales_dataset;

SELECT COUNT(DISTINCT Customerid) AS total_unique_customers
FROM sales_dataset;

SELECT DISTINCT product
FROM sales_dataset;

SELECT DISTINCT Paymentmethod
FROM sales_dataset;

SELECT DISTINCT `year`
FROM sales_dataset;

SELECT SUM(Totalprice) AS total_revenue
FROM sales_dataset;

SELECT AVG(Totalprice) AS Avg_order_value
FROM sales_dataset;

SELECT MAX(Totalprice) AS highest_order_value,
        MIN(Totalprice) AS least_order_value
FROM sales_dataset;

SELECT `month`,
        SUM(Totalprice) AS Revenue
FROM sales_dataset
GROUP BY `MONTH`
ORDER BY Revenue DESC;

SELECT `Year`,
        SUM(Totalprice) AS Revenue
FROM sales_dataset
GROUP BY `year`
ORDER BY Revenue DESC;

SELECT product,
      SUM(quantity) AS total_quantity_sold
 FROM sales_dataset
 GROUP BY product
 ORDER BY total_quantity_sold DESC;
 
SELECT product,
      SUM(Totalprice) AS revenue_by_product
 FROM sales_dataset
 GROUP BY product
 ORDER BY revenue_by_product DESC;
 
 SELECT product,
      COUNT(orderid) AS order_count
 FROM sales_dataset
 GROUP BY product
 ORDER BY order_count ASC;
 
SELECT customerid,
       COUNT(orderid) AS total_orders
FROM sales_dataset
GROUP BY customerid
ORDER BY total_orders DESC;

SELECT orderstatus,
      COUNT(*) AS total
FROM sales_dataset
GROUP BY orderstatus
ORDER BY total;

SELECT paymentmethod,
      COUNT(*) AS usage_count
FROM sales_dataset
GROUP BY paymentmethod
ORDER BY usage_count DESC;

SELECT paymentmethod,
      SUM(totalprice) AS revenue
FROM sales_dataset
GROUP BY paymentmethod
ORDER BY revenue DESC;




SELECT discounttype,
        SUM(totalprice) AS revenue 
FROM sales_dataset
GROUP BY discounttype
ORDER BY revenue DESC;

SELECT referralsource,
       COUNT(*) AS customers
FROM sales_dataset
GROUP BY ReferralSource
ORDER BY customers DESC;

SELECT referralsource,
       SUM(TotalPrice) AS Revenue
FROM sales_dataset
GROUP BY ReferralSource
ORDER BY revenue DESC;

SELECT AVG(Itemsincart) AS avg_cart_size
FROM sales_dataset;

SELECT
       AVG(TotalPrice) AS avg_spending
FROM sales_dataset
GROUP BY ItemsInCart
ORDER BY ItemsInCart;

SELECT customerid,
     COUNT(orderid) AS orders
FROM sales_dataset
GROUP BY customerid
HAVING orders > 1;
