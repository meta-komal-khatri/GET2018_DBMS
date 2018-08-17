/**Display Shopper’s information along with number of orders he/she placed during last 30 days.
**/
SELECT ShopperID,S_name,S_mob_no,S_user,S_email,COUNT(o.Order_Id) AS Total_orders FROM shopper s
LEFT JOIN storefront1.order o
ON s.ShopperID=o.Shopper_Id
GROUP BY ShopperID;

/**Display the top 5 Shoppers who generated maximum number of revenue in last 30 days.
**/
SELECT ShopperID,S_name,S_mob_no,S_user,S_email,COUNT(o.Order_Id) AS Total_orders FROM shopper s
LEFT JOIN storefront1.order o
ON s.ShopperID=o.Shopper_Id
WHERE o.Date_order>CURDATE()-30
GROUP BY ShopperID
ORDER BY COUNT(o.Order_Id) DESC
LIMIT 5;


/**Display top 5 Products which are ordered most in last 60 days along with numbers.**/
SELECT p.idProduct,p.P_Name,COUNT(o.Shopper_Id) FROM product p
INNER JOIN order_product op
ON op.Product_Id=p.idProduct
INNER JOIN storefront1.order o
ON o.Order_ID=op.Order_Id
GROUP BY p.idProduct
ORDER BY COUNT(o.Shopper_Id) DESC
LIMIT 5;

/**Display Monthly sales revenue of the StoreFront for last 6 months. It should display each month’s sale.
**/
/** for 6 months MONTH(Date_order)>MONTH(CURDATE())-6**/
SELECT SUM(Order_cost), MONTH(Date_order) FROM storefront1.order
WHERE MONTH(Date_order)>MONTH(CURDATE())-1                          
GROUP BY YEAR(Date_order),MONTH(Date_order);


/**Mark the products as Inactive which are not ordered in last 90 days.
**/
SET SQL_SAFE_UPDATES = 0; 


UPDATE product p
INNER JOIN 
    (SELECT p1.idProduct 
     FROM product  p1
     WHERE idProduct NOT IN(
                     SELECT DISTINCT(OP.Product_Id)
                     FROM order_product AS OP 
                     INNER JOIN storefront1.order AS O 
                     ON OP.Order_Id=O.Order_Id 
                     WHERE O.Date_order >curdate()-90)) AS t
ON t.idProduct=p.idProduct
SET p.P_status='Inactive';


/**Display top 10 Items which were cancelled most.**/

SELECT idProduct,P_Name ,COUNT(op.status) FROM product
INNER JOIN order_product op
ON op.Product_ID=idProduct AND op.status='Cancelled'
GROUP BY idProduct
ORDER BY COUNT(op.status) DESC
LIMIT 3;




/**Given a category search keyword, display all the Products present in this category/categories. 
**/

