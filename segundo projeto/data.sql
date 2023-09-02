
USE ecommerce;

INSERT INTO clients(full_name, cpf, client_address) VALUES
('Caio', 'José', '123', 'Rua Da Moeda - 123'),
('Mevio', 'Cavalcante', '123', 'Rua do Imperador - 321'),
('Ticio', 'Ubiraja', '123', 'Rua Das Flores - 456');


INSERT INTO Services(serv_name, evaluation, category, price) VALUES
('Alinhamento', 5, 'simples', 59.99),
('balanceamento', 3, 'simples', 79.90),
('Revisão', 4, 'simples', 490.99);

INSERT INTO orders (id_order_client, order_status, order_description) VALUES
(1, 'Cancelado', 'Pedido #2023-34537856'),
(2, 'Confirmado','Pedido #2023-34647635'),
(3, 'Em processamento', 'Pedido #2023-75564264');

INSERT INTO payments (id_p_Order, type_payment) VALUES
(1, 'PIX'),
(2, 'Boleto'),
(3, 'Cartão');

INSERT INTO storages (id_prod_storages, storage_location, quantity) VALUES
(1, 'RJ', 100),
(2, 'SP', 500),
(3, 'MG', 15);


INSERT INTO supplier (social_name, cnpj, contact) VALUES
('FORD', '1233123151-0001', '129564345'),
('FIAT', '2233123151-0001', '768556783');

INSERT INTO productOrder (id_product_order, id_po_order, po_quantity, po_status) VALUES
(1, 2, 10, 'Disponível'),
(2, 4, 5, 'Sem Estoque'),
(3, 5, 2, 'Disponível');

select * from clients;