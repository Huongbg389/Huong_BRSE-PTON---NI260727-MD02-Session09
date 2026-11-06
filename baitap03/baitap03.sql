USE hocdatabase;
CREATE TABLE products (
   product_id INT PRIMARY KEY AUTO_INCREMENT,
   product_name VARCHAR (50) NOT NULL,
   price DECIMAL(12,2) NOT NULL CHECK (price > 0),
   stock INT NOT NULL CHECK (stock > 0)
);

DELIMITER $$
CREATE PROCEDURE get_high_value_products ()
  BEGIN
     SELECT * FROM products WHERE price > 1000000;
  END $$
DELIMITER ;
CALL get_high_value_products;