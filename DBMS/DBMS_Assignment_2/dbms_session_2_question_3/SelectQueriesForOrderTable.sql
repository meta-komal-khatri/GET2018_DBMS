
/**Display Recent 50 Orders placed (Id, Order Date, Order Total).**/
SELECT Order_Id,Date_order,Order_cost From storefront1.order
ORDER BY Date_order DESC
LIMIT 50;

/**Display 10 most expensive Orders.**/
SELECT * FROM storefront1.order
ORDER BY Order_cost DESC
LIMIT 10;

/**Display all the Orders which are placed more than 10 days
old and one or more items from those orders are still not shipped.**/
SELECT DISTINCT o.Order_Id,Date_order FROM storefront1.order o
INNER JOIN order_product op
ON o.Order_Id=op.Order_Id
WHERE op.Status="Initial" AND DATEDIFF(CURDATE(),o.Date_order)>10;

/**Display list of shoppers which haven't ordered anything since last month.**/
SELECT ShopperID FROM shopper
WHERE ShopperID NOT IN (SELECT Shopper_Id FROM storefront1.order 
WHERE DATEDIFF(CURDATE(),Date_order)>30);

/**Display list of shopper along with orders placed by them in last 15 days. **/
SELECT s.ShopperID,S_name,o.Order_Id FROM shopper s
INNER JOIN storefront1.order o
ON s.ShopperID=o.Shopper_Id
WHERE DATEDIFF(CURDATE(),o.Date_order)<15;

/**Display list of order items which are in “shipped” state for particular Order Id (i.e.: 1020))**/
SELECT Product_Id,p.P_Name,p.P_Detail,product_price FROM order_product
INNER JOIN product p
ON Product_Id=p.idProduct
WHERE Order_Id=49 AND Status="Shipped";


SELECT Product_Id,p.P_Name,p.P_Detail,product_price FROM order_product
INNER JOIN product p
ON Product_Id=p.idProduct
WHERE Order_Id=43 AND Status="Shipped";

/**Update first 20 Order items status to “Shipped” which are placed today.**/
UPDATE storefront1.order 
SET Status="Shipped"
WHERE Date_order=CURDATE()
LIMIT 20;



