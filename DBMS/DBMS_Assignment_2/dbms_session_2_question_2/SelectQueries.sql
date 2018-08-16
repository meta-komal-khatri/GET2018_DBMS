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

USE StoreFront1;


#list of all product whose quantity is less than 50
SELECT p.idProduct,p.P_Name,p.P_Price,p.P_Detail,s.Available_Quantity
FROM product p
INNER JOIN stock s
ON p.idProduct=s.Product_Id
WHERE s.Available_Quantity<51 AND s.Available_Quantity>0;

#increase product quantity by 100 
SET SQL_SAFE_UPDATES = 0;    /**without where clause we can not update**/

UPDATE stock s1
INNER JOIN stock s2 
ON s1.Product_Id=s2.Product_Id
SET s1.Available_Quantity=s2.Available_Quantity+100;













