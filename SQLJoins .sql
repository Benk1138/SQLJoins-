SELECT * FROM bestbuy.products;
/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
select P.Name AS 'Product Name', c.Name AS 'Catagory Name'
FROM Catagories AS c
JOIN Products AS p 
ON c. CatagoryID = p.CatagoryID
Where CatagoryID = 1; 
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */

SELECT p.Name,  p.price, r.Rating 
FROM products AS p
JOIN reviews AS r 
ON p.ProductID = r.ProductID 
WHERE r.Rating = 5; 

 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */

SELECT e.FristName, e.LastName, SUM(s.Quantity) AS Total-- AVG(s.PricePerInit) AS Average 
FROM sales AS e
ON s.EmplpyeeID = e.EmployeeID
GROUP by e.FirstName, e.LastName 
ORDER BY Total, Average, Tatal  
LIMIT 2;


/* joins: find the name of the department, and the name of the category for Appliances and Games */

SELECT d.NAME 'Department Name', c.Name AS 'Catagory Name'
FROM departments as d 
JOIN catagories as c 
ON d.DepartmentID = c.DepartmentID
WHERE C.Name = 'Appliences' OR c.Name = 'Games';

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 
 SELECT  * FROM products WHERE products.Name LIKE '%Hotel California%'
 
 SELECT p.Name, SUM(s.Quantity) AS 'Total Sold", (p.Price *SUM (s.Quantity) AS 'Total Price Sold' 
 
 FROM products AS p
 JOIN sales AS s 
 ON p.ProductID = s.ProductID 
 --WHERE p.ProductID =97;
 WHEREp.Name LIKE 'Hotel California'
 GROUP BY p.ProdctID;

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */

SELECT * FROM products WHERE Name LIKE 'Visio%';

SELECT P.Name, r.Reviewer, r.Rating, r.Comment
FROM product AS p
JOIN reviews AS r
ON p.ProductID = r.ProductID
WHERE p.Products = 857 AND r.Rating = 1; 