create table ventas(
	id BIGSERIAL NOT NULL PRIMARY KEY,
	product_code BIGINT NOT NULL  REFERENCES product(id),
    user_code BIGINT NOT NULL REFERENCES usuario(id),
    product_quantity VARCHAR(50) NOT NULL
);


