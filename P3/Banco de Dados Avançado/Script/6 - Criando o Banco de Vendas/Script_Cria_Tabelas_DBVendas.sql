/* ************************************** */
/* CRIANDO AS TABELAS NO BANCO DISCIPLINA */
/* ************************************** */

CREATE TABLE Vendedor (
  idVendedor int IDENTITY(1,1) NOT NULL,
  Nome VARCHAR(40) NULL,
  PRIMARY KEY(idVendedor)
);

CREATE TABLE Produto (
  idProduto int IDENTITY(1,1) NOT NULL,
  Descricao VARCHAR(40) NULL,
  Setor VARCHAR(20) NULL,
  PRIMARY KEY(idProduto)
);

CREATE TABLE Cliente (
  idCliente int IDENTITY(1,1) NOT NULL,
  Nome VARCHAR(40) NULL,
  Celular VARCHAR(10) NULL,
  Email VARCHAR(45) NULL,
  PRIMARY KEY(idCliente)
);

/* ************************************************* */
/* CRIANDO A TABELA VENDA COM AS CHAVES ESTRANGEIRAS */
/* ************************************************* */

CREATE TABLE Venda (
  idVenda int IDENTITY(1,1) NOT NULL,
  Produto_idProduto INTEGER NOT NULL,
  Vendedor_idVendedor INTEGER NOT NULL,
  Cliente_idCliente INTEGER NOT NULL,
  Quantidade INTEGER NULL,
  DataVenda DATE NULL,
  Turno VARCHAR(10) NULL,
  PRIMARY KEY(idVenda),
  FOREIGN KEY(Cliente_idCliente)
    REFERENCES Cliente(idCliente)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Vendedor_idVendedor)
    REFERENCES Vendedor(idVendedor)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Produto_idProduto)
    REFERENCES Produto(idProduto)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);
