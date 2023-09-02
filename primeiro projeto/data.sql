
USE ecommerce;

INSERT INTO clients(Fname, Lname, CPF, Address) VALUES
('Caio', 'José', '123', 'Rua Da Moeda - 123'),
('Mevio', 'Cavalcante', '123', 'Rua do Imperador - 321'),
('Ticio', 'Ubiraja', '123', 'Rua Das Flores - 456');


INSERT INTO product(Pname, avaliação, categoria, valor) VALUES
('celular', 5, 'Eletrônico', 1899.99),
('bicicleta', 3, 'esportes', 479.90),
('Sofá', 4, 'Casa', 1229.99);

INSERT INTO orders (idOrderClient, orderStatus, orderDescription) VALUES
(1, 'Cancelado', 'Pedido #2023-34537856'),
(2, 'Confirmado','Pedido #2023-34647635'),
(3, 'Em processamento', 'Pedido #2023-75564264');

INSERT INTO payments (idPOrder, typePayment) VALUES
(1, 'PIX'),
(2, 'Boleto'),
(3, 'Cartão');

INSERT INTO storages (idProdStorages, storageLocation, quantity) VALUES
(1, 'RJ', 100),
(2, 'SP', 500),
(3, 'MG', 15);


INSERT INTO supplier (socialName, CNPJ, contact) VALUES
('Forncedor1', '1233123151-0001', '129564345'),
('Fornecedor2', '2233123151-0001', '768556783');

INSERT INTO productOrder (idPOproduct, idPOorder, poQuantity, poStatus) VALUES
(1, 2, 10, 'Disponível'),
(2, 4, 5, 'Sem Estoque'),
(3, 5, 2, 'Disponível');

select * from clients;