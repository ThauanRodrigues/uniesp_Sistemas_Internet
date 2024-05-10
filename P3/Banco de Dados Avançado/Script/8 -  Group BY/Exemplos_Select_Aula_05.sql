-- Fornecedores do Japão
SELECT * FROM Fornecedores
WHERE Pais='Japão'

-- Produtos que são fornecidos por fornecedores do Japão
SELECT * FROM Produtos
WHERE CodigoDoFornecedor in (4,6)

-- Produtos que são fornecidos por fornecedores do Japão
SELECT * FROM Produtos AS p Join Fornecedores As F
ON p.CodigoDoFornecedor=f.CodigoDoFornecedor
WHERE f.Pais='Japão'

-- Relação dos Funcionários e Produtos Comercializados
SELECT f.Nome as Funcionário,pr.NomeDoProduto as Produto FROM Funcionarios f 
JOIN Pedidos p ON f.CodigoDoFuncionario = p.CodigoDoFuncionario
JOIN Detalhes_do_Pedido dp ON dp.NumeroDoPedido = p.NumeroDoPedido
JOIN Produtos pr ON pr.CodigoDoProduto = dp.CodigoDoProduto

-- Total de Preço Unitário já comercializado
select SUM(PrecoUnitário) from Detalhes_do_Pedido

-- O maior preço unitário já comercializado
select MAX(PrecoUnitário) from Detalhes_do_Pedido

-- Relação dos Pedidos realizados e o valor total deles
Select NumeroDoPedido,SUM(PrecoUnitário*Quantidade) Total
From Detalhes_do_Pedido GROUP BY NumeroDoPedido ORDER By Total DESC


-- Relação do códido do funcionário, nome do funcionário e o total de pedidos
Select p.CodigoDoFuncionario, f.Nome,Count(*) as total
From Pedidos p
Join Funcionarios f
ON p.CodigoDoFuncionario = f.CodigoDoFuncionario
group by p.CodigoDoFuncionario, f.Nome
order by total desc

-- Relação dos Produtos e a quantidade já comercializado
Select p.NomeDoProduto, count(Quantidade) total
From Detalhes_do_Pedido d
join Produtos p ON d.CodigoDoProduto = p.CodigoDoProduto
group by p.NomeDoProduto
order by total desc

-- Relação dos funcionários e o total de pedidos realizados
Select CodigoDoFuncionario, count(*) from Pedidos
group by CodigoDoFuncionario

-- Relação dos Clientes, total de pedidos realizados e o total do faturamento
Select p.CodigoDoCliente, count(*) TotalPedidos, SUM (d.Quantidade*d.PrecoUnitário) from Pedidos p
JOIN Detalhes_do_Pedido d
ON p.NumeroDoPedido = d.NumeroDoPedido
group by p.CodigoDoCliente
order by TotalPedidos desc

-- Relação de todos os clientes e a quantidade de pedidos
Select p.CodigoDoCliente,Count(*) as QuantPedidos From Pedidos p
right JOIN Clientes c
ON p.CodigoDoCliente=c.CodigoDoCliente
group by p.CodigoDoCliente



