/**Create a function to return month in a year having maximum orders. Year will be input parameter.
**/
DELIMITER $$

CREATE FUNCTION max_month_order(year int(4)) RETURNS int(2)

DETERMINISTIC

BEGIN
    
    DECLARE order_month int(3);
    
    SET order_month= (SELECT t.month,MAX(Counted) FROM ( SELECT MONTH(Date_order) AS month ,COUNT(Order_Id) As Counted FROM  storefront1.order 
                                                WHERE YEAR(Date_order)=2018
                                                GROUP BY MONTH(Date_order)) AS t);
    RETURN (order_month);
END $$



    
