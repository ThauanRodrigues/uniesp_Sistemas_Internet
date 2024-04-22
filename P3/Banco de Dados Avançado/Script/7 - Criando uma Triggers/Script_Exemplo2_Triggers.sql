-- Criando as tabelas
-- -----------------------------------------
CREATE TABLE Usuario (
    IDUsuario int IDENTITY(1,1) NOT NULL,
    NomeUsuario VARCHAR(50),
    ContagemPedidos INT,
	PRIMARY KEY(IDUsuario)
);

CREATE TABLE PedidoUsuario (
    IDPedidoUsuario int IDENTITY(1,1) NOT NULL,
    IDUsuario INT FOREIGN KEY REFERENCES Usuario(IDUsuario),
    DataPedido DATE,
	PRIMARY KEY(IDPedidoUsuario)
);

-- Visualizando as tabelas criadas
select * from PedidoUsuario

select * from Usuario

-- Povoando as tabelas
SET IDENTITY_INSERT [Usuario] ON 
INSERT [Usuario] ([IDUsuario],[NomeUsuario],[ContagemPedidos]) VALUES (1,N'Maria Carla',0)
INSERT [Usuario] ([IDUsuario],[NomeUsuario],[ContagemPedidos]) VALUES (2,N'Pedro Lima',0)
INSERT [Usuario] ([IDUsuario],[NomeUsuario],[ContagemPedidos]) VALUES (3,N'Joao Carlos',0)
INSERT [Usuario] ([IDUsuario],[NomeUsuario],[ContagemPedidos]) VALUES (4,N'Adalberto Silva',0)
INSERT [Usuario] ([IDUsuario],[NomeUsuario],[ContagemPedidos]) VALUES (5,N'Emanuel Salerno',0)
INSERT [Usuario] ([IDUsuario],[NomeUsuario],[ContagemPedidos]) VALUES (6,N'Silvano Dantas',0)
SET IDENTITY_INSERT [Usuario] OFF
GO

SET IDENTITY_INSERT [PedidoUsuario] ON 
INSERT [PedidoUsuario] ([IDPedidoUsuario],[IDUsuario],[DataPedido]) VALUES (1,1,CAST(N'2023-10-02' AS Date))
INSERT [PedidoUsuario] ([IDPedidoUsuario],[IDUsuario],[DataPedido]) VALUES (2,2,CAST(N'2023-10-03' AS Date))
INSERT [PedidoUsuario] ([IDPedidoUsuario],[IDUsuario],[DataPedido]) VALUES (3,3,CAST(N'2023-10-03' AS Date))
INSERT [PedidoUsuario] ([IDPedidoUsuario],[IDUsuario],[DataPedido]) VALUES (4,4,CAST(N'2023-10-04' AS Date))
INSERT [PedidoUsuario] ([IDPedidoUsuario],[IDUsuario],[DataPedido]) VALUES (5,1,CAST(N'2023-10-05' AS Date))
INSERT [PedidoUsuario] ([IDPedidoUsuario],[IDUsuario],[DataPedido]) VALUES (6,2,CAST(N'2023-10-05' AS Date))
INSERT [PedidoUsuario] ([IDPedidoUsuario],[IDUsuario],[DataPedido]) VALUES (7,3,CAST(N'2023-10-05' AS Date))
INSERT [PedidoUsuario] ([IDPedidoUsuario],[IDUsuario],[DataPedido]) VALUES (8,4,CAST(N'2023-10-06' AS Date))
INSERT [PedidoUsuario] ([IDPedidoUsuario],[IDUsuario],[DataPedido]) VALUES (9,1,CAST(N'2023-10-06' AS Date))
INSERT [PedidoUsuario] ([IDPedidoUsuario],[IDUsuario],[DataPedido]) VALUES (10,2,CAST(N'2023-10-07' AS Date))
INSERT [PedidoUsuario] ([IDPedidoUsuario],[IDUsuario],[DataPedido]) VALUES (11,3,CAST(N'2023-10-07' AS Date))
INSERT [PedidoUsuario] ([IDPedidoUsuario],[IDUsuario],[DataPedido]) VALUES (12,4,CAST(N'2023-10-07' AS Date))
INSERT [PedidoUsuario] ([IDPedidoUsuario],[IDUsuario],[DataPedido]) VALUES (13,1,CAST(N'2023-10-08' AS Date))
INSERT [PedidoUsuario] ([IDPedidoUsuario],[IDUsuario],[DataPedido]) VALUES (14,2,CAST(N'2023-10-08' AS Date))
SET IDENTITY_INSERT [PedidoUsuario] OFF
GO

-- Visualizando as tabelas com os dados

select * from PedidoUsuario

select * from Usuario


-- Criando as trigger

CREATE TRIGGER trg_AfterInsertPedidoUsuario
ON PedidoUsuario
AFTER INSERT
AS
BEGIN
    UPDATE Usuario
    SET ContagemPedidos = ContagemPedidos + 1
    FROM Usuario u
    INNER JOIN inserted i ON u.IDUsuario = i.IDUsuario;
END;

CREATE TRIGGER trg_AfterDeletePedido
ON PedidoUsuario
AFTER DELETE
AS
BEGIN
    UPDATE Usuario
    SET ContagemPedidos = ContagemPedidos - 1
    FROM Usuario u
    INNER JOIN deleted d ON u.IDUsuario = d.IDUsuario;
END;

-- Visualizando o conteúdo das tabelas

select * from PedidoUsuario
select * from Usuario

-- Inserindo um registro na tabela PedidoUsuário para ver o
-- funcionamento da trigger criada

INSERT [PedidoUsuario] (IDUsuario,[DataPedido]) VALUES (1,CAST(N'2023-10-02' AS Date))

-- Deletando um registro na tabela PedidoUsuário para ver o
-- funcionamento da trigger criada

DELETE FROM PedidoUsuario WHERE IDPedidoUsuario=12
