\set product_code 32
\set product_quantity 10
\set user_code 31

SELECT * FROM product WHERE id = :product_code AND CAST(stock AS Integer) > 0 ;

SELECT * FROM product WHERE id = :product_code AND  available_for_selling = 'true' ;

UPDATE product SET stock = CAST(stock AS Integer) - :product_quantity WHERE id = :product_code;  

INSERT INTO ventas (user_code, product_code, product_quantity) VALUES (:user_code, :product_code, :product_quantity);
