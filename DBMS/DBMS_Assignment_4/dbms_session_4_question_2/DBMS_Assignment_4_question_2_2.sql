/**Create a stored procedure to retrieve table having order detail with status for a given period. 
Start date and end date will be input parameter. Put validation on input dates like start date is less than end date. 
If start date is greater than end date take first date of month as start date.
**/


DELIMITER //

CREATE PROCEDURE order_details(IN startDate DATE,IN endDate DATE)

BEGIN
        IF startDate>endDate THEN
            SET startDate=DATE_ADD(DATE_ADD(LAST_DAY(end_date),
                INTERVAL 1 DAY),
            INTERVAL - 1 MONTH);
        END IF;
        
        SELECT * FROM storefront1.order
        WHERE Date_order BETWEEN startDate AND endDate;
    
END //
CALL order_details(STR_TO_DATE("2018-07-03","%Y-%m-%d"),STR_TO_DATE("2018-08-15","%Y-%m-%d"));

