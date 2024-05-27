-- Lista de exercícios 07

--1. Exibir o nome do produto cujo preço unitário seja acima do preço unitário médio.

SELECT NomeProduto
FROM Produtos
WHERE PrecoUnitario > (SELECT AVG(PrecoUnitario) FROM Produtos);

--2. Exibir um relatório com o nome dos clientes que já compraram o produto “Maxilaku”.

SELECT DISTINCT NomeCliente
FROM Compras
WHERE NomeProduto = 'Maxilaku';

--3. Exibir um relatório com o número do pedido de todos os pedidos que tiveram acima
de 5 itens por pedido.

SELECT NumeroPedido
FROM Pedidos
WHERE ItensPorPedido > 5;

--4. Exibir um relatório com o nome dos clientes e o valor do maior pedido feito por ele.

SELECT NomeCliente, MAX(ValorPedido) AS MaiorPedido
FROM Pedidos
GROUP BY NomeCliente;

--5. Exibir um relatório com o nome do produto e a maior quantidade vendida desse
produto.

SELECT NomeProduto, MAX(QuantidadeVendida) AS MaiorQuantidadeVendida
FROM Vendas
GROUP BY NomeProduto;

--6. Exibir um relatório com o nome do produto e o preço mais baixo vendido desse
--produto.

SELECT NomeProduto, MIN(PrecoVenda) AS MenorPrecoVendido
FROM Vendas
GROUP BY NomeProduto;

--7. Exibir o número do pedido de todos os pedidos cuja transportadora seja “Speedy
--Express” no segunda trimestre de 1996.

SELECT NumeroPedido
FROM Pedidos
WHERE Transportadora = 'Speedy Express' AND 
      YEAR(DataPedido) = 1996 AND 
      QUARTER(DataPedido) = 2;

--8. Exibir um relatório com todos os números de pedidos realizados nos meses de
--Abril/96 e Março/97.

SELECT NumeroPedido
FROM Pedidos
WHERE (YEAR(DataPedido) = 1996 AND MONTH(DataPedido) = 4) OR
      (YEAR(DataPedido) = 1997 AND MONTH(DataPedido) = 3);

--9. Exibir um relatório com todos os números de pedidos que tiveram seu valor
--((PreçoUnitário * Quantidade) – Desconto), acima da média das vendas
--relacionados no segundo trimestre de 1997.

SELECT NumeroPedido
FROM Pedidos
WHERE ((PrecoUnitario * Quantidade - Desconto) > (SELECT AVG(PrecoUnitario * Quantidade - Desconto) FROM Pedidos WHERE YEAR(DataPedido) = 1997 AND QUARTER(DataPedido) = 2));

--10. Exibir um relatório com o nome dos fornecedores que apresentam preço unitário
--dos seus produtos acima da média.

SELECT DISTINCT Fornecedores.NomeFornecedor
FROM Fornecedores
INNER JOIN Produtos ON Fornecedores.IDFornecedor = Produtos.IDFornecedor
WHERE Produtos.PrecoUnitario > (SELECT AVG(PrecoUnitario) FROM Produtos);

--11. Exibir um relatório com o nome do produto e o seu preço unitário de todos que
--pertença a categoria “Confeitos” (utilizando sub-query).

SELECT NomeProduto, PrecoUnitario
FROM Produtos
WHERE CodigoCategoria = (
    SELECT CodigoCategoria
    FROM Categorias
    WHERE NomeCategoria = 'Confeitos'
);

--12. Exibir o número do pedido, código do cliente e a data do pedido de todos os pedidos
--das transportadora “Speedy Express” ou “Federal Shipping” (utilizando sub-query).

SELECT NumeroPedido, CodigoCliente, DataPedido
FROM Pedidos
WHERE CodigoTransportadora IN (
    SELECT CodigoTransportadora
    FROM Transportadoras
    WHERE NomeTransportadora IN ('Speedy Express', 'Federal Shipping')
);

--13. Exibir um relatório com o nome do cliente (NomeDaEmpresa), o número do pedido
--e a data do pedidos de todos os pedidos realizados no mês de agosto de 1996 ou
--no mês de setembro 1997.

SELECT Clientes.NomeDaEmpresa, Pedidos.NumeroPedido, Pedidos.DataPedido
FROM Clientes
JOIN Pedidos ON Clientes.CodigoCliente = Pedidos.CodigoCliente
WHERE (YEAR(Pedidos.DataPedido) = 1996 AND MONTH(Pedidos.DataPedido) = 8)
   OR (YEAR(Pedidos.DataPedido) = 1997 AND MONTH(Pedidos.DataPedido) = 9);

--14. Exibir um relatório com todos os pedidos que foram feitos por clientes que
--apresentam Fax nulo.

SELECT Pedidos.*
FROM Pedidos
JOIN Clientes ON Pedidos.CodigoCliente = Clientes.CodigoCliente
WHERE Clientes.Fax IS NULL;

--15. Exibir um relatório com o nome dos clientes que tiveram o valor total de seus
--pedidos acima da média de pedidos.

SELECT NomeCliente
FROM Clientes
WHERE CodigoCliente IN (
    SELECT CodigoCliente
    FROM Pedidos
    GROUP BY CodigoCliente
    HAVING SUM(ValorTotal) > (SELECT AVG(ValorTotal) FROM Pedidos)
);

--16. Exibir o nome dos funcionários que estão abaixo da média de idade.

SELECT NomeFuncionario
FROM Funcionarios
WHERE Idade < (SELECT AVG(Idade) FROM Funcionarios);

--17. Exibir o nome dos funcionários que estão acima da média do número de pedidos
--feito pelos funcionários.

SELECT F.NomeFuncionario
FROM Funcionarios F
WHERE (SELECT COUNT(*) FROM Pedidos P WHERE P.CodigoFuncionario = F.CodigoFuncionario) > (SELECT AVG(QuantidadePedidos) FROM (SELECT CodigoFuncionario, COUNT(*) AS QuantidadePedidos FROM Pedidos GROUP BY CodigoFuncionario) AS PedidosPorFuncionario);

--18. Exibir o número do pedido de todos os clientes que não apresentam Fax.

SELECT Pedidos.NumeroPedido
FROM Pedidos
JOIN Clientes ON Pedidos.CodigoCliente = Clientes.CodigoCliente
WHERE Clientes.Fax IS NULL;

--19. Exibir o Nome dos clientes que ainda não efetuaram nenhum pedido.

SELECT NomeCliente
FROM Clientes
WHERE CodigoCliente NOT IN (SELECT DISTINCT CodigoCliente FROM Pedidos);

--20. Exibir todos o pedidos que contiver algum produto cuja categoria seja “Bebidas”.

SELECT DISTINCT P.NumeroPedido
FROM Pedidos P
JOIN Produtos Pr ON P.CodigoProduto = Pr.CodigoProduto
JOIN Categorias C ON Pr.CodigoCategoria = C.CodigoCategoria
WHERE C.NomeCategoria = 'Bebidas';

--21. Exibir o nome dos funcionários que fizeram pedidos para os clientes: Antonio
--Moreno Taquería, Blauer See Delikatessen e Ernst Handel.

SELECT DISTINCT F.NomeFuncionario
FROM Funcionarios F
JOIN Pedidos P ON F.CodigoFuncionario = P.CodigoFuncionario
JOIN Clientes C ON P.CodigoCliente = C.CodigoCliente
WHERE C.NomeDaEmpresa IN ('Antonio Moreno Taquería', 'Blauer See Delikatessen', 'Ernst Handel');

--22. Exibir o nome dos clientes cujo pedidos estejam com o valor do frete acima da
--média.

SELECT C.NomeDoCliente
FROM Clientes C
JOIN Pedidos P ON C.CodigoCliente = P.CodigoCliente
WHERE P.ValorFrete > (SELECT AVG(ValorFrete) FROM Pedidos);

--23. Exibir o nome dos produtos cujo desconto dado esteja abaixo da média de
--descontos oferecidos aos produtos.

SELECT NomeProduto
FROM Produtos
WHERE Desconto < (SELECT AVG(Desconto) FROM Produtos);

--24. Exibir o nome dos fornecedores cujo produto apresente preço unitário acima da
--média dos preços unitários.

SELECT DISTINCT F.NomeFornecedor
FROM Fornecedores F
JOIN Produtos P ON F.CodigoFornecedor = P.CodigoFornecedor
WHERE P.PrecoUnitario > (SELECT AVG(PrecoUnitario) FROM Produtos);

--25. Exibir o nome dos produtos que apresentam unidades em estoque abaixo da média
--das quantidades vendidas.

SELECT NomeProduto
FROM Produtos
WHERE UnidadesEmEstoque < (SELECT AVG(QuantidadeVendida) FROM Produtos);
