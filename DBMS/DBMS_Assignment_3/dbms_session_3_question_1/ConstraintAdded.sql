
/** Added primary key **/
ALTER TABLE storefront1.product_category
ADD COLUMN Prod_Cat_Id 
INT NOT NULL AUTO_INCREMENT  AFTER Category_Id 
, ADD PRIMARY KEY (Prod_Cat_Id) ;

ALTER TABLE product_images
ADD COLUMN Prod_Img_Id
INT NOT NULL AUTO_INCREMENT AFTER P_Images
,ADD PRIMARY KEY(Prod_Img_Id);