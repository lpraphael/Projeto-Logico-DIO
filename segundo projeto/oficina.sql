DROP DATABASE oficina;
CREATE DATABASE oficina;
USE oficina;

CREATE TABLE clients(
	id_client INT auto_increment PRIMARY KEY,
    full_name VARCHAR(10),
    cpf CHAR(11) NOT NULL,
	client_address VARCHAR(45),
    CONSTRAINT unique_cpf_client UNIQUE (cpf)
);

CREATE TABLE Services(
	id_service INT auto_increment PRIMARY KEY,
    serv_name VARCHAR(10),
    evaluation FLOAT DEFAULT 0,
    category VARCHAR (20),
    price INT NOT NULL
);

CREATE TABLE orders(
  	id_order INT auto_increment PRIMARY KEY,
    id_order_client INT,
    order_status enum('Cancelado', 'Confirmado', 'Em processamento') DEFAULT 'Em processamento',
    order_description VARCHAR (255),
    CONSTRAINT fk_orders_client FOREIGN KEY (id_order_client) REFERENCES clients(id_client)
			ON UPDATE cascade
);

CREATE TABLE payments(
    id_payment INT auto_increment PRIMARY KEY,
    id_p_Order INT,
    type_payment enum('Boleto', 'Cartão', 'PIX', 'Dinheiro'),
    CONSTRAINT fk_payment_client FOREIGN KEY (id_p_order) REFERENCES orders(id_order)
);

CREATE TABLE storages(
  	id_storages INT auto_increment PRIMARY KEY,
    id_prod_storages INT,
    storage_location VARCHAR(250),
    quantity INT DEFAULT 0,
    CONSTRAINT fk_prod_storage FOREIGN KEY (id_prod_storages) REFERENCES product(id_product)
);

CREATE TABLE supplier(
  	id_supplier INT auto_increment PRIMARY KEY,
    social_name VARCHAR(45) NOT NULL,
    cnpj CHAR(15) NOT NULL,
    contact CHAR(11) NOT NULL,
    CONSTRAINT unique_supplier UNIQUE (cnpj)
);

CREATE TABLE product_order(
	id_product_order INT,
    id_po_order INT,
    po_quantity INT DEFAULT 1,
    po_status enum('Disponível', 'Sem estoque') DEFAULT 'Disponível',
    PRIMARY KEY (id_product_order, id_po_order),
    CONSTRAINT fk_product_order_seller FOREIGN KEY (id_product_order) REFERENCES product(id_service),
    CONSTRAINT fk_product_order_product FOREIGN KEY (id_po_order) REFERENCES orders(id_order)
);

SHOW tables;
SHOW databases;
USE information_schema;
SHOW tables;