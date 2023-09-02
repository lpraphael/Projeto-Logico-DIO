DROP DATABASE ecommerce;
CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE clients(
	idClient INT auto_increment PRIMARY KEY,
    Fname VARCHAR(10),
    Lname VARCHAR(20),
    CPF CHAR(11) NOT NULL,
	ADDRESS VARCHAR(45),
    CONSTRAINT unique_cpf_client UNIQUE (CPF)
);

CREATE TABLE product(
	idProduct INT auto_increment PRIMARY KEY,
    Pname VARCHAR(10),
    avaliação FLOAT DEFAULT 0,
    categoria VARCHAR (20),
    valor INT NOT NULL
);

CREATE TABLE orders(
  	idOrder INT auto_increment PRIMARY KEY,
    idOrderClient INT,
    orderStatus enum('Cancelado', 'Confirmado', 'Em processamento') DEFAULT 'Em processamento',
    orderDescription VARCHAR (255),
    CONSTRAINT fk_orders_client FOREIGN KEY (idOrderClient) REFERENCES clients(idClient)
			ON UPDATE cascade
);

CREATE TABLE payments(
    idPayment INT auto_increment PRIMARY KEY,
    idPOrder INT,
    typePayment enum('Boleto', 'Cartão', 'PIX', 'Dinheiro'),
    CONSTRAINT fk_payment_client FOREIGN KEY (idPOrder) REFERENCES orders(idOrder)
);
CREATE TABLE storages(
  	idStorages INT auto_increment PRIMARY KEY,
    idProdStorages INT,
    storageLocation VARCHAR(250),
    quantity INT DEFAULT 0,
    CONSTRAINT fk_prod_storage FOREIGN KEY (idProdStorages) REFERENCES product(idProduct)
);

CREATE TABLE supplier(
  	idSupplier INT auto_increment PRIMARY KEY,
    socialName VARCHAR(45) NOT NULL,
    CNPJ CHAR(15) NOT NULL,
    contact CHAR(11) NOT NULL,
    CONSTRAINT unique_supplier UNIQUE (CNPJ)
);

CREATE TABLE productOrder(
	idPOproduct INT,
    idPOorder INT,
    poQuantity INT DEFAULT 1,
    poStatus enum('Disponível', 'Sem estoque') DEFAULT 'Disponível',
    PRIMARY KEY (idPOproduct, idPOorder),
    CONSTRAINT fk_productorder_seller FOREIGN KEY (idPOproduct) REFERENCES product(idProduct),
    CONSTRAINT fk_productorder_product FOREIGN KEY (idPOorder) REFERENCES orders(idOrder)
);

SHOW tables;
SHOW databases;
USE information_schema;
SHOW tables;