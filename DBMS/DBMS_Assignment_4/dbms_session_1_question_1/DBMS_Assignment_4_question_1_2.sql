/**Create a function to return month in a year having maximum orders. Year will be input parameter.
**/
DELIMITER $$

CREATE FUNCTION max_month_order(year int(4)) RETURNS int(2)

DETERMINISTIC

BEGIN
    
    DECLARE order_month int(3);
    
    SET order_month= ( SELECT MONTH(Date_order) AS month
     FROM `order`
     WHERE YEAR(Date_order) = 2018
     GROUP BY MONTH(Date_order)
     ORDER BY COUNT(Order_Id) DESC
     LIMIT 1);
    RETURN (order_month);
END $$



    
