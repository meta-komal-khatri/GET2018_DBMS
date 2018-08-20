
/**Write a command to display all the table names present in StoreFront.
**/
SHOW TABLES;

/*Write a command to remove Product table of the StoreFront database.
*/
use storefront;

ALTER TABLE `storefront`.`order_product` DROP FOREIGN KEY `Order_Id` , DROP FOREIGN KEY `p_id1` ;

ALTER TABLE product_category DROP FOREIGN KEY Product_Id;

ALTER TABLE product_images DROP FOREIGN KEY P_Id;

ALTER TABLE stock DROP FOREIGN KEY Product_Key;

DROP TABLE product;
