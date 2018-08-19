
/**Create a function to calculate number of orders in a month. Month and year will be input parameter to function.
**/

DELIMITER $$

CREATE FUNCTION orders_count(order_month int(2), order_year int(4)) RETURNS int(3)
	DETERMINISTIC
BEGIN
	
    DECLARE order_count int(3);
    
    SET order_count = (SELECT COUNT(*) from storefront1.order
					   WHERE MONTH(Date_order) = order_month and YEAR(Date_order) = order_year);
   
	RETURN (order_count);
END $$








