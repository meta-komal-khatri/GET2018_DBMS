 ALTER TABLE storefront1.order 
 ADD COLUMN Order_cost INT NOT NULL  AFTER Date_deliver ;
 
 use storefront1;
 
 INSERT INTO storefront1.order (Shopper_Id,Status,Date_order,Order_cost) VALUES (1,"Shipped",STR_TO_DATE('2018-08-15', '%Y-%m-%d'),1000);
 INSERT INTO storefront1.order (Shopper_Id,Status,Date_order,Order_cost) VALUES (3,"Shipped",STR_TO_DATE('2018-08-14', '%Y-%m-%d'),200),
                                                                                (6,"Initial",STR_TO_DATE('2018-08-14', '%Y-%m-%d'),10000),
                                                                                (7,"Shipped",STR_TO_DATE('2018-08-14', '%Y-%m-%d'),3000),
                                                                                (1,"Initial",STR_TO_DATE('2018-08-14', '%Y-%m-%d'),1999),
                                                                                (3,"Initial",STR_TO_DATE('2018-08-13', '%Y-%m-%d'),999),
                                                                                (5,"Shipped",STR_TO_DATE('2018-08-13', '%Y-%m-%d'),199),
                                                                                (3,"Shipped",STR_TO_DATE('2018-08-13', '%Y-%m-%d'),10000),
                                                                                (2,"Shipped",STR_TO_DATE('2018-08-13', '%Y-%m-%d'),15000),
                                                                                (7,"Initial",STR_TO_DATE('2018-08-12', '%Y-%m-%d'),1300),
                                                                                (3,"Shipped",STR_TO_DATE('2018-08-12', '%Y-%m-%d'),1934),
                                                                                (2,"Shipped",STR_TO_DATE('2018-08-12', '%Y-%m-%d'),1987),
                                                                                (1,"Shipped",STR_TO_DATE('2018-08-12', '%Y-%m-%d'),109),
                                                                                (3,"Initial",STR_TO_DATE('2018-08-11', '%Y-%m-%d'),102),
                                                                                (4,"Shipped",STR_TO_DATE('2018-08-11', '%Y-%m-%d'),190),
                                                                                (5,"Initial",STR_TO_DATE('2018-08-11', '%Y-%m-%d'),120),
                                                                                (6,"Shipped",STR_TO_DATE('2018-08-11', '%Y-%m-%d'),1000),
                                                                                (7,"Initial",STR_TO_DATE('2018-08-11', '%Y-%m-%d'),1500),
                                                                                (2,"Shipped",STR_TO_DATE('2018-08-11', '%Y-%m-%d'),1200),
                                                                                (1,"Shipped",STR_TO_DATE('2018-08-11', '%Y-%m-%d'),1700),
                                                                                (3,"Initial",STR_TO_DATE('2018-08-11', '%Y-%m-%d'),10000),
                                                                                (4,"Shipped",STR_TO_DATE('2018-08-10', '%Y-%m-%d'),10011),
                                                                                (5,"Shipped",STR_TO_DATE('2018-08-10', '%Y-%m-%d'),1004),
                                                                                (6,"Shipped",STR_TO_DATE('2018-08-10', '%Y-%m-%d'),3000),
                                                                                (1,"Initial",STR_TO_DATE('2018-08-10', '%Y-%m-%d'),3200),
                                                                                (3,"Shipped",STR_TO_DATE('2018-08-9', '%Y-%m-%d'),3100),
                                                                                (4,"Shipped",STR_TO_DATE('2018-08-9', '%Y-%m-%d'),4300),
                                                                                (6,"Shipped",STR_TO_DATE('2018-08-9', '%Y-%m-%d'),5400),
                                                                                (7,"Shipped",STR_TO_DATE('2018-08-9', '%Y-%m-%d'),1200),
                                                                                (5,"Initial",STR_TO_DATE('2018-08-9', '%Y-%m-%d'),2900),
                                                                                (5,"Shipped",STR_TO_DATE('2018-08-9', '%Y-%m-%d'),4500),
                                                                                (3,"Shipped",STR_TO_DATE('2018-08-9', '%Y-%m-%d'),3400),
                                                                                (2,"Initial",STR_TO_DATE('2018-08-8', '%Y-%m-%d'),19000),
                                                                                (1,"Shipped",STR_TO_DATE('2018-08-8', '%Y-%m-%d'),2100),
                                                                                (1,"Shipped",STR_TO_DATE('2018-08-8', '%Y-%m-%d'),999),
                                                                                (1,"Shipped",STR_TO_DATE('2018-08-8', '%Y-%m-%d'),9999),
                                                                                (1,"Shipped",STR_TO_DATE('2018-08-4', '%Y-%m-%d'),1234),
                                                                                (2,"Shipped",STR_TO_DATE('2018-08-4', '%Y-%m-%d'),1234),
                                                                                (2,"Initial",STR_TO_DATE('2018-08-4', '%Y-%m-%d'),145),
                                                                                (3,"Shipped",STR_TO_DATE('2018-08-4', '%Y-%m-%d'),1234),
                                                                                (4,"Initial",STR_TO_DATE('2018-08-4', '%Y-%m-%d'),1786),
                                                                                (5,"Shipped",STR_TO_DATE('2018-08-4', '%Y-%m-%d'),1123),
                                                                                (3,"Shipped",STR_TO_DATE('2018-08-4', '%Y-%m-%d'),1111),
                                                                                (3,"Initial",STR_TO_DATE('2018-08-4', '%Y-%m-%d'),4599),
                                                                                (5,"Shipped",STR_TO_DATE('2018-08-3', '%Y-%m-%d'),5999),
                                                                                (7,"Shipped",STR_TO_DATE('2018-08-3', '%Y-%m-%d'),12999),
                                                                                (7,"Initial",STR_TO_DATE('2018-08-3', '%Y-%m-%d'),12543),
                                                                                (7,"Shipped",STR_TO_DATE('2018-08-3', '%Y-%m-%d'),1100),
                                                                                (7,"Initial",STR_TO_DATE('2018-08-2', '%Y-%m-%d'),1700),
                                                                                (5,"Shipped",STR_TO_DATE('2018-07-31', '%Y-%m-%d'),1800),
                                                                                (6,"Shipped",STR_TO_DATE('2018-07-31', '%Y-%m-%d'),1200),
                                                                                (6,"Shipped",STR_TO_DATE('2018-07-31', '%Y-%m-%d'),1500),
                                                                                (6,"Initial",STR_TO_DATE('2018-07-29', '%Y-%m-%d'),1700),
                                                                                (1,"Shipped",STR_TO_DATE('2018-07-29', '%Y-%m-%d'),1000),
                                                                                (4,"Shipped",STR_TO_DATE('2018-07-29', '%Y-%m-%d'),1400),
                                                                                (2,"Shipped",STR_TO_DATE('2018-07-14', '%Y-%m-%d'),1400),
                                                                                (2,"Shipped",STR_TO_DATE('2018-07-4', '%Y-%m-%d'),1000),
                                                                                (2,"Shipped",STR_TO_DATE('2018-07-4', '%Y-%m-%d'),10000),
                                                                                (7,"Initial",STR_TO_DATE('2018-07-2', '%Y-%m-%d'),1100),
                                                                                (3,"Shipped",STR_TO_DATE('2018-07-2', '%Y-%m-%d'),1100),
                                                                                (3,"Initial",STR_TO_DATE('2018-07-2', '%Y-%m-%d'),1010),
                                                                                (3,"Shipped",STR_TO_DATE('2018-07-2', '%Y-%m-%d'),190);
                                                                                
INSERT INTO storefront1.order_product (Order_Id,Product_Id,status,product_price) VALUES (1,1,"Shipped",500),
                                                                                        (1,2,"Initial",500),
                                                                                        (2,1,"Shipped",200),
                                                                                        (2,2,"Shipped",100),
                                                                                        (43,1,"Shipped",500),
                                                                                        (43,2,"Initial",500),
                                                                                        (43,1,"Shipped",500),
                                                                                        (44,1,"Initial",200),
                                                                                        (45,1,"Shipped",500),
                                                                                        (46,5,"Shipped",500),
                                                                                        (46,1,"Initial",500),
                                                                                        (47,1,"Shipped",500),
                                                                                        (47,1,"Shipped",500),
                                                                                        (47,1,"Shipped",500),
                                                                                        (48,1,"Initial",500),
                                                                                        (48,1,"Shipped",500),
                                                                                        (49,5,"Shipped",1500),
                                                                                        (49,3,"Shipped",500),
                                                                                        (50,1,"Initial",500),
                                                                                        (50,1,"Shipped",500),
                                                                                        (51,1,"Shipped",500),
                                                                                        (51,1,"Shipped",500);
                                                                                        
                                                                                        
INSERT INTO storefront1.order (Shopper_Id,Status,Date_order,Order_cost) VALUES (3,"Initial",CURDATE(),200),
                                                                                (6,"Initial",CURDATE(),10000),
                                                                                (7,"Initial",CURDATE(),3000),
                                                                                (1,"Initial",CURDATE(),1999),
                                                                                (3,"Initial",CURDATE(),999),
                                                                                (5,"Initial",CURDATE(),199),
                                                                                (3,"Initial",CURDATE(),10000),
                                                                                (2,"Initial",CURDATE(),15000),
                                                                                (7,"Initial",CURDATE(),1300),
                                                                                (3,"Initial",CURDATE(),1934),
                                                                                (2,"Initial",CURDATE(),1987),
                                                                                (1,"Initial",CURDATE(),109),
                                                                                (3,"Initial",CURDATE(),102),
                                                                                (4,"Initial",CURDATE(),190),
                                                                                (5,"Initial",CURDATE(),120),
                                                                                (6,"Initial",CURDATE(),1000);
INSERT INTO storefront1.order (Shopper_Id,Status,Date_order,Order_cost) VALUES (3,"Initial",CURDATE(),200),
                                                                                (6,"Initial",CURDATE(),10000),
                                                                                (7,"Initial",CURDATE(),3000),
                                                                                (1,"Initial",CURDATE(),1999),
                                                                                (3,"Initial",CURDATE(),999),
                                                                                (5,"Initial",CURDATE(),199),
                                                                                (3,"Initial",CURDATE(),10000),
                                                                                (2,"Initial",CURDATE(),15000),
                                                                                (7,"Initial",CURDATE(),1300),
                                                                                (3,"Initial",CURDATE(),1934),
                                                                                (2,"Initial",CURDATE(),1987),
                                                                                (1,"Initial",CURDATE(),109),
                                                                                (3,"Initial",CURDATE(),102),
                                                                                (4,"Initial",CURDATE(),190),
                                                                                (5,"Initial",CURDATE(),120),
                                                                                (6,"Initial",CURDATE(),1000);
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        