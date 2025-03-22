CREATE TABLE Usuário
(
  cpf VARCHAR NOT NULL,
  nome VARCHAR NOT NULL,
  data_nascimento DATE NOT NULL,
  PRIMARY KEY (cpf)
);

CREATE TABLE Hotel
(
  id_hotel INT NOT NULL,
  nome VARCHAR NOT NULL,
  descrição VARCHAR NOT NULL,
  foto VARCHAR NOT NULL,
  quant_quartos INT NOT NULL,
  estrelas INT NOT NULL,
  PRIMARY KEY (id_hotel)
);

CREATE TABLE Cliente
(
  cpf VARCHAR NOT NULL,
  PRIMARY KEY (cpf),
  FOREIGN KEY (cpf) REFERENCES Usuário(cpf)
);

CREATE TABLE Administrador
(
  cpf VARCHAR NOT NULL,
  PRIMARY KEY (cpf),
  FOREIGN KEY (cpf) REFERENCES Usuário(cpf)
);

CREATE TABLE Quarto
(
  quant_banheiros INT NOT NULL,
  quant_camas INT NOT NULL,
  tipo VARCHAR NOT NULL,
  id_quarto INT NOT NULL,
  valor_diaria FLOAT NOT NULL,
  tamanho INT NOT NULL,
  id_hotel INT NOT NULL,
  PRIMARY KEY (id_quarto, id_hotel),
  FOREIGN KEY (id_hotel) REFERENCES Hotel(id_hotel)
);

CREATE TABLE Avaliação
(
  conteudo VARCHAR NOT NULL,
  cpf_cliente VARCHAR NOT NULL,
  id_quarto INT NOT NULL,
  id_hotel INT NOT NULL,
  estrelas INT NOT NULL,
  PRIMARY KEY (cpf_cliente, id_quarto, id_hotel),
  FOREIGN KEY (cpf_cliente) REFERENCES Cliente(cpf),
  FOREIGN KEY (id_quarto, id_hotel) REFERENCES Quarto(id_quarto, id_hotel)
);

CREATE TABLE Favorito
(
  cpf_cliente VARCHAR NOT NULL,
  id_quarto INT NOT NULL,
  id_hotel INT NOT NULL,
  PRIMARY KEY (cpf_cliente, id_quarto, id_hotel),
  FOREIGN KEY (cpf_cliente) REFERENCES Cliente(cpf),
  FOREIGN KEY (id_quarto, id_hotel) REFERENCES Quarto(id_quarto, id_hotel)
);

CREATE TABLE Reserva
(
  id_reserva INT NOT NULL,
  status VARCHAR NOT NULL,
  num_pessoas INT NOT NULL,
  cpf VARCHAR NOT NULL,
  PRIMARY KEY (id_reserva),
  FOREIGN KEY (cpf) REFERENCES Cliente(cpf)
);

CREATE TABLE Reserva_Quarto
(
  valor FLOAT NOT NULL,
  data_entrada DATE NOT NULL,
  data_saida DATE NOT NULL,
  id_reserva INT NOT NULL,
  id_quarto INT NOT NULL,
  id_hotel INT NOT NULL,
  PRIMARY KEY (data_entrada, data_saida, id_quarto, id_hotel),
  FOREIGN KEY (id_reserva) REFERENCES Reserva(id_reserva),
  FOREIGN KEY (id_quarto, id_hotel) REFERENCES Quarto(id_quarto, id_hotel)
);