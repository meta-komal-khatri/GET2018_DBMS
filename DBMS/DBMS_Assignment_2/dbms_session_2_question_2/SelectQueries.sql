SELECT p.idProduct,p.P_Name,p.P_Price,p.P_Detail,s.Available_Quantity FROM product p
INNER JOIN stock s
ON p.idProduct=s.Product_Id
WHERE s.Available_Quantity>0
ORDER BY s.Adding_Date DESC;
