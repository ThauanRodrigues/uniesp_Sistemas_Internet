-- Executando um select normal
SELECT CodigoDoCliente, COUNT(*) AS Total
FROM Pedidos
GROUP BY CodigoDoCliente;
GO

-- Criando uma Stored Procedure e colocando um select dentro
CREATE PROCEDURE ExibirTotalPorCliente
AS
BEGIN
	SELECT CodigoDoCliente, COUNT(*) AS Total
	FROM Pedidos
	GROUP BY CodigoDoCliente;
END;
GO

-- Executando uma story procedure criada
EXEC ExibirTotalPorCliente;
GO

-- Criando uma Stored Procedure com passagem de parâmetro
CREATE PROCEDURE ExibirTotalPorClienteCodigo
@IDCliente VARCHAR(40)
AS
BEGIN
	SELECT CodigoDoCliente, COUNT(*) AS Total
	FROM Pedidos
	GROUP BY CodigoDoCliente
    HAVING CodigoDoCliente = @IDCliente;
END;
GO

-- Executando uma Stored Procedure com passagem de parâmetro
EXEC ExibirTotalPorClienteCodigo @IDCliente='BERGS'

-- Apagando uma Stored Procedure
DROP PROCEDURE ExibirTotalPorClienteCodigo;

DROP PROCEDURE ExemploCondicao2;

-- Criando uma Stored Procedure com uma estrutura condicional
CREATE PROCEDURE ExemploCondicaoParametro
@IDTransportadora INT
AS
BEGIN
    DECLARE @TotalRegistros INT;
	select @TotalRegistros = count(*) from Pedidos where CodigoDaTransportadora=@IDTransportadora
    IF @TotalRegistros > 200
    BEGIN
        PRINT 'Existem mais de 200 registros na tabela.';
    END
    ELSE
    BEGIN
        PRINT 'Existem 200 ou menos registros na tabela.';
    END
END;

-- Executando uma Stored Procedure
EXEC ExemploCondicao

-- Executando uma Stored Procedure com passagem de parâmetro
EXEC ExemploCondicaoParametro @IDTransportadora=3
GO

-- Criando uma Stored Procedure com uma estrutura de repetição
CREATE PROCEDURE ExemploRepeticao
AS
BEGIN
    DECLARE @Contador INT = 1;
    WHILE @Contador <= 5
    BEGIN
        PRINT 'Contador: ' + CAST(@Contador AS VARCHAR(10));
        SET @Contador = @Contador + 1;
    END
END;
GO

-- Executando uma Stored Procedure
ALTER PROCEDURE ExemploRepeticao
@total INT
AS
BEGIN
    DECLARE @Contador INT = 1;

    WHILE @Contador <= @total
    BEGIN
        PRINT 'Contador: ' + CAST(@Contador AS VARCHAR(10));
        SET @Contador = @Contador + 1;
    END
END;


-- Executando uma Stored Procedure
EXEC ExemploRepeticao @total=7

select * from Clientes

select NomeDaEmpresa from Clientes
