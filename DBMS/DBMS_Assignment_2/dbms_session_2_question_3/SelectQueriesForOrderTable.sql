
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
WHERE op.Status="Initial" AND o.Date_order<CURDATE()-10;

/**Display list of shoppers which haven't ordered anything since last month.**/

SELECT ShopperID FROM shopper
WHERE ShopperID NOT IN (SELECT Shopper_Id FROM storefront1.order 
WHERE Date_order<CURDATE()-30);



