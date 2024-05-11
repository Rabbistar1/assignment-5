
CREATE DATABASE shop;
USE shop;
CREATE TABLE cos_products( cos_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT ,
products_name VARCHAR (100),
size VARCHAR (100),
price INT);
INSERT INTO cos_products(cos_id, products_name,size,price) VALUES 
(1'aveeno baby wash','150ml',1250),
(2'jhonson baby oil','200ml',850),
(3'biodarma face cleanger','150ml',1850),
(4 'cerave face cleanger','150ml', 2850),
(5'tea tea oil','10ml', 980);

SELECT * FROM cos_products;

CREATE TABLE gift_item (
    gift_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    cos_id INT NOT NULL,
    NAME VARCHAR(50),
    price INT,
    FOREIGN KEY (cos_id) REFERENCES cos_products (cos_id)
);

INSERT INTO gift_item (cos_id, NAME, price) VALUES 
(1, 'bag', 1800),
(2, 'bag', 1950),
(3, 'watch', 12000);

SELECT * FROM gift_item;

SELECT * FROM cos_products,gift_item 
WHERE cos_products.cos_id = gift_item.gift_id;

SELECT t1.products_name, t2.NAME FROM cos_products AS t1, gift_item AS t2 
WHERE t1.cos_id = t2.gift_id;

-- INNER join

SELECT t1.*, t2.* FROM cos_products AS t1 INNER JOIN gift_item 
AS t2 ON t1.cos_id= t2.gift_id;

-- left join
SELECT t1.*, t2.* FROM cos_products AS t1 LEFT  JOIN gift_item 
AS t2 ON t1.cos_id= t2.gift_id;

-- right join

SELECT t1.*, t2.* FROM cos_products AS t1 RIGHT  JOIN gift_item 
AS t2 ON t1.cos_id= t2.gift_id;

-- full join 
SELECT t1.*, t2.* FROM cos_products AS t1 FULL OUTER   JOIN gift_item 
AS t2 ON t1.cos_id= t2.gift_id;


