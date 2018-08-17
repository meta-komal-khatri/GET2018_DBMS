/**Display the list of products (Id, Title, Count of Categories) which fall in more than one Categories.
**/
SELECT idProduct,P_Name,COUNT(cp.Category_Id) AS Count_Of_Categories FROM product
LEFT JOIN product_category cp
ON idProduct=cp.Product_Id
GROUP BY idProduct
HAVING COUNT(cp.Category_Id)>1;


/**Display Count of products as per below price range:
**/
SELECT t.price_range,COUNT(*) AS ProductCOunt 
FROM(SELECT CASE
        WHEN P_Price>0 AND P_Price<100 THEN '0-100'
        WHEN P_Price>100 AND P_Price<500 THEN '100-500'
        ELSE 'Above 500' END AS price_range
    FROM product) t
GROUP BY t.price_range;


/**Display the Categories along with number of products under each category.
**/
SELECT c.Category_ID,Category_type,COUNT(cp.Product_Id)
FROM category c
LEFT JOIN product_category cp
ON c.Category_Id=cp.Category_Id
GROUP BY c.Category_Id;



 
