-- 1. Exibir o nome do produto cujo preço unitário seja acima do preço unitário médio.
SELECT NomeDoProduto
FROM Produtos  
WHERE PrecoUnitario > (
  SELECT AVG(PrecoUnitario) 
  FROM Produtos
)

-- 2. Exibir um relatório com o nome dos clientes que já compraram o produto “Maxilaku”.
SELECT DISTINCT Clientes.NomeDaEmpresa
FROM Clientes
INNER JOIN Pedidos ON Clientes.CodigoDoCliente = Pedidos.CodigoDoCliente
INNER JOIN Detalhes_do_Pedido ON Pedidos.NumeroDoPedido = Detalhes_do_Pedido.NumeroDoPedido
WHERE Pedidos.NumeroDoPedido IN (
    SELECT Pedidos.NumeroDoPedido
    FROM Pedidos
    INNER JOIN Detalhes_do_Pedido ON Pedidos.NumeroDoPedido = Detalhes_do_Pedido.NumeroDoPedido
    INNER JOIN Produtos ON Detalhes_do_Pedido.CodigoDoProduto = Produtos.CodigoDoProduto
    WHERE Produtos.NomeDoProduto = 'Maxilaku'
)

-- 3. Exibir um relatório com o número do pedido de todos os pedidos que tiveram acima de 5 itens por pedido.
SELECT NumeroDoPedido
FROM Pedidos  
WHERE NumeroDoPedido IN (
  SELECT NumeroDoPedido
  FROM Detalhes_do_Pedido
  GROUP BY NumeroDoPedido
  HAVING COUNT(*) > 5
)

-- 4. Exibir um relatório com o nome dos clientes e o valor do maior pedido feito por ele.
SELECT Clientes.NomeDaEmpresa, MAX(Total) AS 'Maior Pedido'
FROM Clientes
INNER JOIN (
    SELECT Pedidos.CodigoDoCliente, SUM(PrecoUnitário * Quantidade) AS Total
    FROM Pedidos
    INNER JOIN Detalhes_do_Pedido ON Pedidos.NumeroDoPedido = Detalhes_do_Pedido.NumeroDoPedido
    GROUP BY Pedidos.CodigoDoCliente
) T ON Clientes.CodigoDoCliente = T.CodigoDoCliente
GROUP BY Clientes.NomeDaEmpresa

-- 5. Exibir um relatório com o nome do produto e a maior quantidade vendida desse produto.
SELECT Produtos.NomeDoProduto, MAX(TotalQuantidade) AS 'Maior Qtd'
FROM Produtos
INNER JOIN (
    SELECT CodigoDoProduto, SUM(Quantidade) AS TotalQuantidade
    FROM Detalhes_do_Pedido
    GROUP BY CodigoDoProduto
) T ON Produtos.CodigoDoProduto = T.CodigoDoProduto
GROUP BY Produtos.NomeDoProduto

-- 6. Exibir um relatório com o nome do produto e o preço mais baixo vendido desse produto.
SELECT Produtos.NomeDoProduto, MIN(PrecoUnitario) AS 'Menor Preço'
FROM Produtos
INNER JOIN Detalhes_do_Pedido ON Produtos.CodigoDoProduto = Detalhes_do_Pedido.CodigoDoProduto  
GROUP BY Produtos.NomeDoProduto

-- 7. Exibir o número do pedido de todos os pedidos cuja transportadora seja “Speedy Express” no segunda trimestre de 1996.
SELECT NumeroDoPedido
FROM Pedidos
WHERE CodigoDaTransportadora = (
  SELECT CodigoDaTransportadora 
  FROM Transportadoras
  WHERE NomeDaEmpresa = 'Speedy Express'
)
  AND YEAR(DataDoPedido) = 1996
  AND MONTH(DataDoPedido) BETWEEN 4 AND 6

-- 8. Exibir um relatório com todos os números de pedidos realizados nos meses de Abril/96 e Março/97.
SELECT NumeroDoPedido
FROM Pedidos
WHERE MONTH(DataDoPedido) IN (
SELECT MONTH(DataDoPedido)
FROM Pedidos
WHERE MONTH(DataDoPedido) IN (4, 3)
AND YEAR(DataDoPedido) IN (1996, 1997)
)
   
-- 9. Exibir um relatório com todos os números de pedidos que tiveram seu valor ((PreçoUnitário * Quantidade) – Desconto), acima da média das vendas relacionados no segundo trimestre de 1997.
SELECT p.NumeroDoPedido
FROM Pedidos p
INNER JOIN Detalhes_do_Pedido d ON p.NumeroDoPedido = d.NumeroDoPedido
WHERE YEAR(p.DataDoPedido) = 1997 AND MONTH(DataDoPedido) BETWEEN 4 AND 6
  AND ((d.PrecoUnitário * d.Quantidade) - COALESCE(d.Desconto, 0)) >
  (
    SELECT AVG((PrecoUnitário * Quantidade) - COALESCE(Desconto, 0))
    FROM Detalhes_do_Pedido
    INNER JOIN Pedidos ON Detalhes_do_Pedido.NumeroDoPedido = Pedidos.NumeroDoPedido
    WHERE Pedidos.DataDoPedido BETWEEN '1997-04-01' AND '1997-06-30'
  )

-- 10. Exibir um relatório com o nome dos fornecedores que apresentam preço unitário dos seus produtos acima da média. 
SELECT Fornecedores.NomeDaEmpresa
FROM Fornecedores
WHERE CodigoDoFornecedor IN(
  SELECT CodigoDoFornecedor
  FROM Produtos
  GROUP BY CodigoDoFornecedor
  HAVING AVG(PrecoUnitario) > (
    SELECT AVG(PrecoUnitario) FROM Produtos  
  )
)

-- 11. Exibir um relatório com o nome do produto e o seu preço unitário de todos que pertença a categoria “Confeitos” (utilizando sub-query).
SELECT NomeDoProduto, PrecoUnitario
FROM Produtos
WHERE CodigoDaCategoria IN(
  SELECT CodigoDaCategoria
  FROM Categorias
  WHERE NomeDaCategoria = 'Confeitos'
)

-- 12. Exibir o número do pedido, código do cliente e a data do pedido de todos os pedidos das transportadora “Speedy Express” ou “Federal Shipping” (utilizando sub-query).
SELECT NumeroDoPedido, CodigoDoCliente, DataDoPedido
FROM Pedidos
WHERE CodigoDaTransportadora IN(
  SELECT CodigoDaTransportadora
  FROM Transportadoras
  WHERE NomeDaEmpresa IN('Speedy Express','Federal Shipping')
)

-- 13. Exibir um relatório com o nome do cliente (NomeDaEmpresa), o número do pedido e a data do pedidos de todos os pedidos realizados no mês de agosto de 1996 ou no mês de setembro 1997.
SELECT Clientes.NomeDaEmpresa, Pedidos.NumeroDoPedido, Pedidos.DataDoPedido
FROM Clientes
INNER JOIN Pedidos ON Clientes.CodigoDoCliente = Pedidos.CodigoDoCliente  
WHERE MONTH(DataDoPedido) = 8 AND YEAR(DataDoPedido) = 1996
   OR MONTH(DataDoPedido) = 9 AND YEAR(DataDoPedido) = 1997
   
-- 14. Exibir um relatório com todos os pedidos que foram feitos por clientes que apresentam Fax nulo.
SELECT *
FROM Pedidos  
WHERE CodigoDoCliente IN(
  SELECT CodigoDoCliente
  FROM Clientes
  WHERE Fax IS NULL  
)

-- 15. Exibir um relatório com o nome dos clientes que tiveram o valor total de seus pedidos acima da média de pedidos.
SELECT c.NomeDaEmpresa
FROM Clientes c
INNER JOIN (
  SELECT p.CodigoDoCliente, SUM(dp.PrecoUnitário * dp.Quantidade) AS Total
  FROM Pedidos p
  INNER JOIN Detalhes_do_Pedido dp ON p.NumeroDoPedido = dp.NumeroDoPedido
  GROUP BY p.CodigoDoCliente
) T ON c.CodigoDoCliente = T.CodigoDoCliente
GROUP BY c.NomeDaEmpresa
HAVING SUM(T.Total) > (
  SELECT AVG(Total)
  FROM (
    SELECT p.CodigoDoCliente, SUM(dp.PrecoUnitário * dp.Quantidade) AS Total
    FROM Pedidos p
    INNER JOIN Detalhes_do_Pedido dp ON p.NumeroDoPedido = dp.NumeroDoPedido
    GROUP BY p.CodigoDoCliente
  ) T2
)

-- 16. Exibir o nome dos funcionários que estão abaixo da média de idade.
SELECT Nome
FROM Funcionarios  
WHERE DATEDIFF(YEAR, DataDeNascimento, GETDATE()) < (
  SELECT AVG(DATEDIFF(YEAR, DataDeNascimento, GETDATE()))
  FROM Funcionarios
)

-- 17. Exibir o nome dos funcionários que estão acima da média do número de pedidos feito pelos funcionários.
SELECT f.Nome
FROM Funcionarios f
WHERE EXISTS (
  SELECT 1
  FROM Pedidos p
  WHERE p.CodigoDoFuncionario = f.CodigoDoFuncionario
  GROUP BY p.CodigoDoFuncionario
  HAVING COUNT(*) > (
    SELECT AVG(cnt)
    FROM (
      SELECT COUNT(*) AS cnt
      FROM Pedidos
      GROUP BY CodigoDoFuncionario
    ) AS subquery
  )
)

-- 18. Exibir o número do pedido de todos os clientes que não apresentam Fax.
SELECT NumeroDoPedido
FROM Pedidos
WHERE CodigoDoCliente IN(
  SELECT CodigoDoCliente
  FROM Clientes
  WHERE Fax IS NULL
)

-- 19. Exibir o Nome dos clientes que ainda não efetuaram nenhum pedido.
SELECT NomeDaEmpresa
FROM Clientes
WHERE CodigoDoCliente NOT IN(
  SELECT DISTINCT CodigoDoCliente
  FROM Pedidos
)

-- 20. Exibir todos o pedidos que contiver algum produto cuja categoria seja “Bebidas”.
SELECT *
FROM Pedidos
WHERE NumeroDoPedido IN(
  SELECT NumeroDoPedido
  FROM Detalhes_do_Pedido
  WHERE CodigoDoProduto IN(
    SELECT CodigoDoProduto
    FROM Produtos
    WHERE CodigoDaCategoria IN(
      SELECT CodigoDaCategoria  
      FROM Categorias
      WHERE NomeDaCategoria = 'Bebidas'
    ) 
  )
)

-- 21. Exibir o nome dos funcionários que fizeram pedidos para os clientes: Antonio Moreno Taquería, Blauer See Delikatessen e Ernst Handel.
SELECT Nome
FROM Funcionarios
WHERE CodigoDoFuncionario IN(
  SELECT DISTINCT CodigoDoFuncionario
  FROM Pedidos
  WHERE CodigoDoCliente IN(
    SELECT CodigoDoCliente
    FROM Clientes
    WHERE NomeDaEmpresa IN('Antonio Moreno Taquería', 'Blauer See Delikatessen', 'Ernst Handel')
  )
)

-- 22. Exibir o nome dos clientes cujo pedidos estejam com o valor do frete acima da média.
SELECT NomeDaEmpresa
FROM Clientes
WHERE CodigoDoCliente IN(
  SELECT CodigoDoCliente
  FROM Pedidos
  GROUP BY CodigoDoCliente
  HAVING AVG(Frete) > (
    SELECT AVG(Frete) FROM Pedidos
  )
)

-- 23. Exibir o nome dos produtos cujo desconto dado esteja abaixo da média de descontos oferecidos aos produtos.
SELECT NomeDoProduto
FROM Produtos
WHERE CodigoDoProduto IN(
  SELECT CodigoDoProduto
  FROM Detalhes_do_Pedido  
  GROUP BY CodigoDoProduto
  HAVING AVG(Desconto) < (
    SELECT AVG(Desconto) FROM Detalhes_do_Pedido
  )
)

-- 24. Exibir o nome dos fornecedores cujo produto apresente preço unitário acima da média dos preços unitários.
SELECT NomeDaEmpresa
FROM Fornecedores
WHERE CodigoDoFornecedor IN(
  SELECT CodigoDoFornecedor
  FROM Produtos
  GROUP BY CodigoDoFornecedor
  HAVING AVG(PrecoUnitario) > (
     SELECT AVG(PrecoUnitario) FROM Produtos
  )
)

-- 25. Exibir o nome dos produtos que apresentam unidades em estoque abaixo da média das quantidades vendidas.
SELECT NomeDoProduto
FROM Produtos
WHERE CodigoDoProduto IN(
  SELECT CodigoDoProduto
  FROM Detalhes_do_Pedido
  GROUP BY CodigoDoProduto
  HAVING SUM(Quantidade) > (
     SELECT AVG(UnidadesEmEstoque) FROM Produtos
  )
)