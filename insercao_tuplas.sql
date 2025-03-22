INSERT INTO Usuário (cpf, nome, data_nascimento) VALUES
('12345678901', 'João da Silva', '1990-05-15'),
('98765432109', 'Maria Pereira', '1985-11-22'),
('45678912305', 'Carlos Santos', '1978-08-30'),
('78901234506', 'Matheus Conrado', '2000-08-23'),
('23456789014', 'Pedro Souza', '1995-12-05'),
('56789012302', 'Mariana Oliveira', '1982-06-20'),
('34567890108', 'Lucas Pereira', '1992-09-17'),
('89012345607', 'Laura Alves', '1977-04-25'),
('67890123403', 'Felipe Rodrigues', '1997-07-12'),
('01234567890', 'Kaynan Pereira', '2003-12-28'),
('11111111111', 'Luisa Santos', '1988-06-12'),
('22222222222', 'Rafael Lima', '1992-03-25'),
('33333333333', 'Isabela Pereira', '1975-09-18'),
('44444444444', 'Luciano Silva', '1980-11-30'),
('55555555555', 'Camila Ferreira', '1998-04-05'),
('66666666666', 'Gustavo Alves', '1987-07-21'),
('77777777777', 'Amanda Rodrigues', '2003-02-10'),
('88888888888', 'Marcelo Costa', '1972-08-15'),
('99999999999', 'Carolina Souza', '1995-12-03'),
('12312312312', 'Bruno Oliveira', '1990-01-20');

----

INSERT INTO Cliente (cpf) VALUES
('12345678901'),
('98765432109'),
('45678912305'),
('78901234506'),
('23456789014'),
('56789012302'),
('34567890108'),
('89012345607'),
('67890123403'),
('01234567890');

----

INSERT INTO Administrador (cpf) VALUES
('11111111111'),
('22222222222'),
('33333333333'),
('44444444444'),
('55555555555'),
('66666666666'),
('77777777777'),
('88888888888'),
('99999999999'),
('12312312312');

----

INSERT INTO Hotel (id_hotel, nome, descrição, foto, quant_quartos, estrelas) VALUES
(1, 'Hotel Vale das pedras', 'Descrição do Hotel', 'hotel1.jpg', 100, 4),
(2, 'Hotel Monolitos', 'Descrição do Hotel', 'hotel2.jpg', 150, 5),
(3, 'Bertolini Hotel', 'Descrição do Hotel', 'hotel3.jpg', 80, 3),
(4, 'Hotel Itajubá', 'Descrição do Hotel', 'hotel4.jpg', 120, 4),
(5, 'Hotel Pedra dos Ventos', 'Descrição do Hotel', 'hotel5.jpg', 200, 5),
(6, 'Recanto São José', 'Descrição do Hotel', 'hotel6.jpg', 90, 3),
(7, 'Hotel da Villa', 'Descrição do Hotel', 'hotel7.jpg', 110, 4),
(8, 'Gran Mareiro Hotel', 'Descrição do Hotel', 'hotel8.jpg', 130, 4),
(9, 'Magna Praia Hotel', 'Descrição do Hotel', 'hotel9.jpg', 180, 5),
(10, 'Hotel Luzeiros', 'Descrição do Hotel', 'hotel10.jpg', 70, 3);

----

INSERT INTO Quarto (quant_banheiros, quant_camas, tipo, id_quarto, valor_diaria, tamanho, id_hotel) VALUES
(1, 1, 'Suite', 101, 100.00, 20, 1),
(2, 2, 'Single', 102, 150.00, 30, 2),
(1, 1, 'Double', 201, 90.00, 18, 3),
(2, 2, 'Double', 202, 140.00, 28, 4),
(1, 1, 'Single', 301, 110.00, 22, 5),
(2, 2, 'Suite', 302, 160.00, 32, 6),
(1, 1, 'Double', 401, 95.00, 19, 7),
(2, 2, 'Suite', 402, 145.00, 29, 8),
(1, 1, 'Single', 501, 120.00, 24, 9),
(2, 2, 'Suite', 502, 170.00, 34, 10),
(1, 1, 'Suite', 103, 110.00, 22, 1),
(2, 2, 'Single', 104, 160.00, 32, 2),
(1, 1, 'Double', 203, 95.00, 19, 3),
(2, 2, 'Double', 204, 145.00, 29, 4),
(1, 1, 'Single', 303, 120.00, 24, 5),
(2, 2, 'Suite', 304, 170.00, 34, 6),
(1, 1, 'Double', 403, 105.00, 21, 7),
(2, 2, 'Suite', 404, 155.00, 31, 8),
(1, 1, 'Single', 503, 130.00, 26, 9),
(2, 2, 'Suite', 504, 180.00, 36, 10);
	
----

INSERT INTO Avaliação (conteudo, cpf_cliente, id_quarto, id_hotel, estrelas) VALUES
('Muito bom!', '12345678901', 101, 1, 5),
('Adorei o hotel', '98765432109', 102, 2, 4),
('Boa estadia', '45678912305', 201, 3, 4),
('Recomendo', '78901234506', 202, 4, 3),
('Serviço Ruim', '23456789014', 301, 5, 2),
('Quarto espaçoso', '56789012302', 302, 6, 4),
('Piscina perfeita', '34567890108', 401, 7, 5),
('Muito confortável', '89012345607', 402, 8, 3),
('Boa localização', '67890123403', 501, 9, 3),
('Péssimo!', '01234567890', 502, 10, 0);

----

INSERT INTO Favorito (cpf_cliente, id_quarto, id_hotel) VALUES
('12345678901', 101, 1),
('98765432109', 101, 1),
('45678912305', 201, 3),
('78901234506', 202, 4),
('23456789014', 301, 5),
('56789012302', 302, 6),
('34567890108', 101, 1),
('89012345607', 402, 8),
('67890123403', 501, 9),
('01234567890', 502, 10);

----

INSERT INTO Reserva (id_reserva, status, num_pessoas, cpf) VALUES
(1, 'Confirmada', 2, '12345678901'),
(2, 'Pendente', 1, '98765432109'),
(3, 'Confirmada', 2, '45678912305'),
(4, 'Pendente', 2, '78901234506'),
(5, 'Confirmada', 1, '23456789014'),
(6, 'Pendente', 2, '56789012302'),
(7, 'Confirmada', 2, '34567890108'),
(8, 'Pendente', 1, '89012345607'),
(9, 'Confirmada', 2, '67890123403'),
(10, 'Pendente', 2, '01234567890');

----

INSERT INTO Reserva_Quarto (valor, id_reserva, data_entrada, data_saida, id_quarto, id_hotel) VALUES
(100.00, 1, '2023-05-01', '2023-05-05', 101, 1),
(150.00, 1, '2023-05-01', '2023-05-05', 102, 2),
(90.00, 1, '2023-05-01', '2023-05-05', 201, 3),
(140.00, 2, '2023-06-10', '2023-06-15', 202, 4),
(110.00, 2, '2023-06-10', '2023-06-15', 301, 5),
(160.00, 3, '2023-06-10', '2023-06-15', 302, 6),
(95.00, 3, '2023-06-10', '2023-06-15', 401, 7),
(145.00, 4, '2023-06-18', '2023-06-22', 401, 7),
(120.00, 4, '2023-06-10', '2023-06-15', 501, 9),
(170.00, 5, '2023-06-10', '2023-06-15', 502, 10),
(125.00, 6, '2023-06-10', '2023-06-15', 103, 1),
(165.00, 6, '2023-06-10', '2023-06-15', 104, 2),
(95.00, 6, '2023-06-10', '2023-06-15', 101, 1),
(145.00, 6, '2023-06-10', '2023-06-15', 102, 2),
(125.00, 7, '2023-06-10', '2023-06-15', 303, 5),
(175.00, 7, '2023-06-10', '2023-06-15', 304, 6),
(105.00, 8, '2023-06-10', '2023-06-15', 403, 7),
(155.00, 8, '2023-06-10', '2023-06-15', 404, 8),
(130.00, 9, '2023-06-17', '2023-06-20', 403, 7),
(180.00, 10, '2023-06-10', '2023-06-15', 504, 10);
---
