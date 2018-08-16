#Create product table

CREATE TABLE `product` (
  `idProduct` int(11) NOT NULL AUTO_INCREMENT,
  `P_Name` varchar(45) NOT NULL,
  `P_Price` float NOT NULL,
  `P_Detail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idProduct`)
);


#Create table for storing product images

CREATE TABLE `product_images` (
  `Product_Id` int(11) NOT NULL,
  `P_Images` varchar(45) NOT NULL,
  KEY `Product_Id` (`Product_Id`),
  CONSTRAINT `Product_Id` FOREIGN KEY (`Product_Id`) REFERENCES `product` (`idProduct`)
);


#create category table 

CREATE TABLE `category` (
  `Category_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Category_type` varchar(45) NOT NULL,
  `Parent_Cat_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Category_Id`),
  UNIQUE KEY `_UNIQUE` (`Category_Id`)
);

#create product category relation table
CREATE TABLE `product_category` (
  `Product_Id` int(11) NOT NULL,
  `Category_Id` int(11) NOT NULL,
  KEY `Product_Id` (`Product_Id`),
  KEY `Category_Id` (`Category_Id`),
  CONSTRAINT `Product_Id1` FOREIGN KEY (`Product_Id`) REFERENCES `product` (`idProduct`),
  CONSTRAINT `Category_Id` FOREIGN KEY (`Category_Id`) REFERENCES `category` (`Category_Id`)
);


#create shopper

CREATE TABLE `shopper` (
  `ShopperID` int(11) NOT NULL AUTO_INCREMENT,
  `S_name` varchar(105) NOT NULL,
  `S_mob_no` bigint(20) NOT NULL,
  `S_user` varchar(100) NOT NULL,
  `S_email` varchar(45) NOT NULL,
  PRIMARY KEY (`ShopperID`),
  UNIQUE KEY `ShopperID_UNIQUE` (`ShopperID`),
  UNIQUE KEY `S_email_UNIQUE` (`S_email`)
);

#create shopper address table

CREATE TABLE `address` (
  `Shopper_Id` int(11) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `street` varchar(45) NOT NULL,
  PRIMARY KEY (`city`,`state`,`street`),
  KEY `Shopper_Id` (`Shopper_Id`),
  CONSTRAINT `Shopper_Id` FOREIGN KEY (`Shopper_Id`) REFERENCES `shopper` (`ShopperID`)
);

#create cart table
CREATE TABLE `cart` (
  `idCart` int(11) NOT NULL AUTO_INCREMENT,
  `Product_Id` int(11) NOT NULL,
  `Shopper_Id` int(11) NOT NULL,
  `quatnity` int(11) NOT NULL,
  PRIMARY KEY (`idCart`),
  KEY `Product_Id` (`Product_Id`),
  KEY `Shopper_Id` (`Shopper_Id`)
);

#create stock table

CREATE TABLE `stock` (
  `Product_Id` int(11) NOT NULL,
  `Available_Quantity` float DEFAULT NULL,
  UNIQUE KEY `Product_Id_UNIQUE` (`Product_Id`),
  KEY `Product_ID` (`Product_Id`),
  KEY `Product_Key` (`Product_Id`),
  CONSTRAINT `Product_Key` FOREIGN KEY (`Product_Id`) REFERENCES `product` (`idProduct`)
);

#create order table
CREATE TABLE `order` (
  `Order_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Shopper_Id` int(11) NOT NULL,
  `Status` varchar(45) NOT NULL,
  `Date_order` date NOT NULL,
  `Date_deliver` date DEFAULT NULL,
  PRIMARY KEY (`Order_Id`),
  UNIQUE KEY `Order_Id_UNIQUE` (`Order_Id`),
  KEY `Shopper_Id` (`Shopper_Id`)
);

#create order product relation table 
CREATE TABLE `order_product` (
  `Order_Id` int(11) NOT NULL,
  `Product_Id` int(11) NOT NULL,
  `Status` varchar(45) NOT NULL,
  `Product_Order_Id` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  PRIMARY KEY (`Product_Order_Id`),
  UNIQUE KEY `Product_Order_Id_UNIQUE` (`Product_Order_Id`),
  KEY `Order_Id` (`Order_Id`),
  KEY `Product_Id` (`Product_Id`),
  CONSTRAINT `Order_Id` FOREIGN KEY (`Order_Id`) REFERENCES `order` (`Order_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

