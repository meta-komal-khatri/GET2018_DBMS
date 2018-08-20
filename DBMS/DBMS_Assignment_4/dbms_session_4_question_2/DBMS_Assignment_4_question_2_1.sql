/**Create a Stored procedure to retrieve average sales of each product in a month.
Month and year will be input parameter to function.**/

DELIMITER $$
CREATE PROCEDURE avg_Sale(IN month INT(3),IN year INT(4))

BEGIN 
        SELECT ProductId,AVG(product_count) FROM (
            SELECT p.idProduct AS ProductId,COUNT(p.idProduct) as product_count FROM product p
            INNER JOIN order_product op
            ON op.Product_Id=idProduct
            INNER JOIN storefront1.order o
            ON o.Order_Id=op.Order_Id
            WHERE MONTH(Date_order)=month AND YEAR(Date_order)=year
            GROUP BY idProduct) AS p
        GROUP BY ProductId;
END $$



CALL avg_Sale(8,2018);




        
        
