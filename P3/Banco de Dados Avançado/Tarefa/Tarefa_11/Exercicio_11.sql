-- 1. Criar uma stored procedure que dê um aumento de 5% ao preço unitário dosprodutos que pertençam a categoria “Bebidas”. -- 
CREATE PROCEDURE AumentarPrecoBebidas
AS
BEGIN
    UPDATE Produtos
    SET PrecoUnitario = PrecoUnitario * 1.05
    WHERE CodigoDaCategoria = (
        SELECT CodigoDaCategoria
        FROM Categorias
        WHERE NomeDaCategoria = 'Bebidas'
    );
END;

EXEC AumentarPrecoBebidas;

-- 2. Criar uma stored procedure que altere o valor do frete pago nos pedidos, com uma redução de 0.3 para os pedidos feito pela transportadora “Speedy Express” e 0,7 feita pela transportadora “United Package”. --
CREATE PROCEDURE ReduzirFrete
AS
BEGIN
    -- Reduzir o frete em 0.3 para pedidos feitos pela transportadora "Speedy Express"
    UPDATE Pedidos
    SET Frete = Frete - 0.3
    WHERE CodigoDaTransportadora = (
        SELECT CodigoDaTransportadora
        FROM Transportadoras
        WHERE NomeDaEmpresa = 'Speedy Express'
    );

    -- Reduzir o frete em 0.7 para pedidos feitos pela transportadora "United Package"
    UPDATE Pedidos
    SET Frete = Frete - 0.7
    WHERE CodigoDaTransportadora = (
        SELECT CodigoDaTransportadora
        FROM Transportadoras
        WHERE NomeDaEmpresa = 'United Package'
    );
END;

EXEC ReduzirFrete;

-- 3. Criar uma stored procedure para aumentar em cinco unidades o campo “UnidadesEmEstoque” de todos os produtos fornecidos por “Norske Meierier”. --
CREATE PROCEDURE AumentarEstoqueNorskeMeierier
AS
BEGIN
    UPDATE Produtos
    SET UnidadesEmEstoque = UnidadesEmEstoque + 5
    WHERE CodigoDoFornecedor = (
        SELECT CodigoDoFornecedor
        FROM Fornecedores
        WHERE NomeDaEmpresa = 'Norske Meierier'
    );
END;

EXEC AumentarEstoqueNorskeMeierier;


-- 4. Criar uma stored procedure que receba como parâmetro o código do produto, informando ao final se o preço de custo desse produto é maior, menor ou igual ao preço médio dos produtos. -- 
CREATE PROCEDURE CompararPrecoCusto
    @ProdutoID INT
AS
BEGIN
    DECLARE @PrecoCusto DECIMAL(10, 2);
    DECLARE @PrecoMedio DECIMAL(10, 2);

    -- Obter o preço de custo do produto especificado
    SELECT @PrecoCusto = PrecoUnitario
    FROM Produtos
    WHERE CodigoDoProduto = @ProdutoID;

    -- Calcular o preço médio de todos os produtos
    SELECT @PrecoMedio = AVG(PrecoUnitario)
    FROM Produtos;

    -- Comparar o preço de custo do produto com o preço médio e exibir o resultado
    IF @PrecoCusto > @PrecoMedio
    BEGIN
        PRINT 'O preço de custo do produto é maior que o preço médio dos produtos.';
    END
    ELSE IF @PrecoCusto < @PrecoMedio
    BEGIN
        PRINT 'O preço de custo do produto é menor que o preço médio dos produtos.';
    END
    ELSE
    BEGIN
        PRINT 'O preço de custo do produto é igual ao preço médio dos produtos.';
    END
END;

EXEC CompararPrecoCusto @ProdutoID = 1;

-- 5. Criar uma stored procedure para eliminar todos os produtos de uma determinado categoria, informado via parâmetro (não execute essa procedure). --
CREATE PROCEDURE EliminarProdutosPorCategoria
    @NomeCategoria VARCHAR(100)
AS
BEGIN
    DECLARE @CategoriaID INT;

    SELECT @CategoriaID = CodigoDaCategoria
    FROM Categorias
    WHERE NomeDaCategoria = @NomeCategoria;
    IF @CategoriaID IS NULL
    BEGIN
        PRINT 'Categoria não encontrada.';
        RETURN;
    END
    DELETE FROM Produtos
    WHERE CodigoDaCategoria = @CategoriaID;
END;


-- 6. Criar uma stored procedure que ao passar uma quantidade ele possa informar o nome de todos os produtos cujo Unidade em estoque esteja abaixo dessa quantidade, caso não tenha produtos informar uma mensagem. -- 
CREATE PROCEDURE ProdutosComEstoqueAbaixoDe
    @QuantidadeMinima INT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM Produtos
        WHERE UnidadesEmEstoque < @QuantidadeMinima
    )
    BEGIN
        SELECT NomeProduto
        FROM Produtos
        WHERE UnidadesEmEstoque < @QuantidadeMinima;
    END
    ELSE
    BEGIN
        PRINT 'Não há produtos com estoque abaixo de ' + CAST(@QuantidadeMinima AS VARCHAR) + '.';
    END
END;

--7. Criar uma stored procedure que ao passar o valor do mês ele informe um relatório de todos os aniversariantes do mês, juntamente com a sua idade. --
CREATE PROCEDURE RelatorioAniversariantesMes
    @Mes INT
AS
BEGIN
    SELECT NomeDoContato, DataNascimento, DATEDIFF(YEAR, DataNascimento, GETDATE()) AS Idade
    FROM Clientes
    WHERE MONTH(DataNascimento) = @Mes
    ORDER BY DAY(DataNascimento);
END;


-- 8. Criar uma stored procedure que eu posso inserir registro na tabela transportadoras (com a passagem de parâmetros). --
-- Criação da stored procedure para inserir registros na tabela Transportadoras
CREATE PROCEDURE InserirTransportadora
    @NomeTransportadora VARCHAR(100)
AS
BEGIN
    INSERT INTO Transportadoras (NomeDaEmpresa)
    VALUES (@NomeTransportadora);
END;

EXEC InserirTransportadora @NomeTransportadora = 'Nome da Transportadora';

-- 9. Criar uma stored procedure que eu possa diminuir o valor do frete, informando o nome da transportador e o mês. --
CREATE PROCEDURE DiminuirFretePorTransportadoraEMes
    @NomeTransportadora VARCHAR(100),
    @Mes INT
AS
BEGIN
    DECLARE @TransportadoraID INT;

    SELECT @TransportadoraID = CodigoDaTransportadora
    FROM Transportadoras
    WHERE NomeDaEmpresa = @NomeTransportadora;

   
    UPDATE Pedidos
    SET Frete = Frete - 5 
    WHERE CodigoDaTransportadora = @TransportadoraID
    AND MONTH(DataPedido) = @Mes;
END;
