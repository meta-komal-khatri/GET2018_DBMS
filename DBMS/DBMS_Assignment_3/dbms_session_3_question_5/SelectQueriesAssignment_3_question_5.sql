/**Create a view displaying the order information (Id, Title,
Price, Shopper’s name, Email, Orderdate, Status) 
with latest ordered items should be displayed first for last 60 days.**/


CREATE  VIEW Order_information
AS 
SELECT p.idProduct AS Id , p.P_Name AS Title ,op.product_price  AS Price 
                       ,s.S_name AS Shopper_Name,s.S_email AS Email,o.Date_order AS Order_Date,op.status AS Status 
FROM product p
INNER JOIN order_product op
ON p.idProduct=op.Product_Id
INNER JOIN storefront1.order o
ON o.Order_Id=op.Order_Id
INNER JOIN shopper s
ON o.Shopper_Id=s.ShopperID
WHERE DATEDIFF(CURDATE(),o.Date_order)<60
ORDER BY o.Date_order DESC;

SELECT * FROM Order_information;

/**Use the above view to display the Products(Items) which are in ‘shipped’ state.**/

SELECT ID,Title FROM Order_information
WHERE Status='Shipped';


/**Use the above view to display the top 5 most selling products.**/
SELECT Id , Title ,COUNT(Id) FROM Order_information
GROUP BY Id
ORDER BY COUNT(Id) DESC
LIMIT 5;


