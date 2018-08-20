alter table `order` add index order_table_index (Order_Id);

alter table `order` add index order_date_index (Date_order);

alter table `product` add index product_table_index (idProduct);

alter table `category` add index category_table_index (Category_Id);