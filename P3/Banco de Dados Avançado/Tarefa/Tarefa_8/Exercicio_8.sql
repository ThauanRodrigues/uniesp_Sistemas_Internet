-- 1. Criar uma nova coluna na tabela Pedidos, com o nome Total_Pedido, seja do tipo smallmoney. --
ALTER TABLE Pedidos
ADD Total_Pedido smallmoney


-- 2. Atualizar a nova coluna com o resultado obtido na tabela Detalhes do Pedido. --

UPDATE Pedidos
SET Total_Pedido = (
    SELECT SUM(ValorTotal)
    FROM Detalhes_do_Pedido
    WHERE Detalhes_do_Pedido.NumeroDoPedido = Pedidos.NumeroDoPedido
    GROUP BY NumeroDoPedido
)
WHERE NumeroDoPedido IN (SELECT NumeroDoPedido FROM Detalhes_do_Pedido);

-- 3. Criar uma Triggers que informa a cada inserção na tabela cliente uma mensagem com o número de linhas desse banco. -- 
CREATE TRIGGER trg_AfterInsert_Cliente
ON Clientes
AFTER INSERT
AS 
BEGIN
	DECLARE @NumLinhas INT;
	SELECT @NumLinhas = COUNT(*) FROM Clientes 
END;

-- 4.Criar uma Triggers que atualize a coluna Total_Pedido da tabela Pedidos quando for inserido qualquer registro na tabela Detalhe do Pedido. -- 
CREATE TRIGGER trg_AfterInsert_Detalhes_do_Pedido
ON Detalhes_do_Pedido
AFTER INSERT
AS
BEGIN
    UPDATE Pedidos
    SET Total_Pedido = (
        SELECT SUM(ValorTotal)
        FROM Detalhes_do_Pedido
        WHERE Detalhes_do_Pedido.NumeroDoPedido = Pedidos.NumeroDoPedido
    )
    WHERE NumeroDoPedido IN (SELECT NumeroDoPedido FROM inserted);
END;


-- 5. Criar uma Triggers que verifique se a quantidade solicitada na tabela Detalhes do pedido de um determinado produto realmente existe em estoque, caso contrário dá uma mensagem da impossibilidade de fornecimento do produto. --


-- 6. Criar uma Triggers que ao excluir um pedido ela possa excluir todos os registros da tabela Detalhe do Pedido. --
CREATE TRIGGER trg_ExcluirDetalhesPedido
ON Pedidos
AFTER DELETE
AS
BEGIN
    DELETE FROM Detalhes_do_Pedido
    WHERE NumeroDoPedido IN (SELECT deleted.NumeroDoPedido FROM deleted);
END;
