#Insert into product table
INSERT INTO product (P_Name,P_Price,P_Detail) VALUES  ("levis Jeans",1000,"5 pocket jeans");

INSERT INTO product (P_Name,P_Price,P_Detail) VALUES  ("levis Top",500,"Olive Color"),("Block Printed Kurta",1000,"Long Kurta");

INSERT INTO product (P_Name,P_Price,P_Detail) VALUES  ("Grocery",1000,"6 pc set"),
                                                      ("MI Note 5 pro",15000,"64GB/4GB"),
                                                      ("Samsung Galaxy 8",19000,"64GB/4GB"),
                                                      ("Puma Shoes",3100,"RedColor");
                                                      
                                                      


#Insert into product image table
INSERT INTO product_images (Product_Id,P_Images) VALUES (1,2),
                                                        (2,6),
                                                        (4,7);
                                                        

#insert into categories
INSERT INTO category (Category_type,Parent_Cat_Id) VALUES ("Men",\N),
                                                          ("Women",\N),
                                                          ("Ehtnic",1),
                                                          ("Electronics",\N),
                                                          ("Mobile",4);
                                                          
INSERT INTO category (Category_type,Parent_Cat_Id) VALUES ("Western",2),
                                                           ("Western",1),
                                                           ("Sports",1),
                                                           ("Shoes",8);

SELECT *FROM shopper;

#insert into product category
INSERT INTO product_category (Product_Id,Category_Id) VALUES (1,7),
                                                             (2,6),
                                                             (3,6),
                                                             (4,10),
                                                             (5,5),
                                                             (6,5),
                                                             (7,9);



#insert into shopper 
INSERT INTO shopper (S_name,S_mob_no,S_user,S_email) VALUES ("Komal Khatri",9461094737,"KomalKhatri3","komal@gmail.com"),
                                                            ("Akshita Agrawal",9456321756,"Akshira2","akshita@gmail.com"),
                                                            ("Ramji Choudhary",8765432109,"Ramji2","Ramji1@gmail.com"),
                                                            ("Surbhi Singh",9460094737,"Surbhi3","surbhi@gmail.com"),
                                                            ("Shubham Joshi",9087654321,"shubham1","shubham@gmail.com"),
                                                            ("Vaibhav Gautam",8764182526,"vaibhav3","vaibhav@gmail.com"),
                                                            ("Pratiksha Jain",8209035061,"prati20","pratij20@gmail.com");
                                                            
                                                            
#insert into address table
INSERT INTO address (Shopper_Id,city,state,street) VALUES (1,"Jaipur","Rajasthan","Sitapura"),
                                                          (2,"SGNR","RAJ","VINOBA BASTI"),
                                                          (2,"JAIPUR","RAJ","METACUBE"),
                                                          (3,"bhopal","mp","street 2"),
                                                          (4,"mumbai","MH","strreet 3"),
                                                          (4,"jaipur","RAJ","Metacube"),
                                                          (5,"Kanpur","UP","street 4"),
                                                          (6,"Ahmedabad","GJ","street 3"),
                                                          (7,"HNMG","RAJ","street 4");
                                                          
                                                          
#insert into stock table
INSERT INTO stock (Product_Id,Available_Quantity,Adding_Date) VALUES (1,100,CURDATE());
INSERT INTO stock (Product_Id,Available_Quantity,Adding_Date) VALUES (2,200,STR_TO_DATE('2018-08-15', '%Y-%m-%d'));
INSERT INTO stock (Product_Id,Available_Quantity,Adding_Date) VALUES (3,45,STR_TO_DATE('2018-08-14', '%Y-%m-%d')),
                                                                     (4,300,STR_TO_DATE('2018-08-15', '%Y-%m-%d')),
                                                                     (5,200,STR_TO_DATE('2018-08-15', '%Y-%m-%d')),
                                                                     (6,20,STR_TO_DATE('2018-08-15', '%Y-%m-%d')),
                                                                     (7,0,CURDATE());
                                    
                                                          
