#Display Id, Title, Category Title, Price of the products which are Active and recently added products should be at top.
SELECT p.idProduct,p.P_Name,p.P_Price,p.P_Detail,s.Available_Quantity,c.Category_type 
FROM product p
INNER JOIN stock s
ON p.idProduct=s.Product_Id
INNER JOIN product_category pc
ON p.idProduct=pc.Product_Id
INNER JOIN category c
ON c.Category_Id=pc.Category_Id
WHERE s.Available_Quantity>0
ORDER BY s.Adding_Date DESC;



#Display the list of products which don't have any images.
SELECT p.idProduct
FROM product p
WHERE p.idProduct NOT IN (SELECT Product_Id FROM product_images);

#Display all Id, Title and Parent Category Title for all the 
#Categories listed, sorted by Parent Category Title and then Category Title.

SELECT c.Category_Id,c.Category_type,IFNULL(cp.Category_type,c.Category_type) AS Parent_Category From category c
LEFT JOIN category cp
ON cp.Category_Id=c.Parent_Cat_Id
ORDER BY c.Category_Type,cp.Category_type;




