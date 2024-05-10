-- Fornecedores do Jap�o
SELECT * FROM Fornecedores
WHERE Pais='Jap�o'

-- Produtos que s�o fornecidos por fornecedores do Jap�o
SELECT * FROM Produtos
WHERE CodigoDoFornecedor in (4,6)

-- Produtos que s�o fornecidos por fornecedores do Jap�o
SELECT * FROM Produtos AS p Join Fornecedores As F
ON p.CodigoDoFornecedor=f.CodigoDoFornecedor
WHERE f.Pais='Jap�o'

-- Rela��o dos Funcion�rios e Produtos Comercializados
SELECT f.Nome as Funcion�rio,pr.NomeDoProduto as Produto FROM Funcionarios f 
JOIN Pedidos p ON f.CodigoDoFuncionario = p.CodigoDoFuncionario
JOIN Detalhes_do_Pedido dp ON dp.NumeroDoPedido = p.NumeroDoPedido
JOIN Produtos pr ON pr.CodigoDoProduto = dp.CodigoDoProduto

-- Total de Pre�o Unit�rio j� comercializado
select SUM(PrecoUnit�rio) from Detalhes_do_Pedido

-- O maior pre�o unit�rio j� comercializado
select MAX(PrecoUnit�rio) from Detalhes_do_Pedido

-- Rela��o dos Pedidos realizados e o valor total deles
Select NumeroDoPedido,SUM(PrecoUnit�rio*Quantidade) Total
From Detalhes_do_Pedido GROUP BY NumeroDoPedido ORDER By Total DESC


-- Rela��o do c�dido do funcion�rio, nome do funcion�rio e o total de pedidos
Select p.CodigoDoFuncionario, f.Nome,Count(*) as total
From Pedidos p
Join Funcionarios f
ON p.CodigoDoFuncionario = f.CodigoDoFuncionario
group by p.CodigoDoFuncionario, f.Nome
order by total desc

-- Rela��o dos Produtos e a quantidade j� comercializado
Select p.NomeDoProduto, count(Quantidade) total
From Detalhes_do_Pedido d
join Produtos p ON d.CodigoDoProduto = p.CodigoDoProduto
group by p.NomeDoProduto
order by total desc

-- Rela��o dos funcion�rios e o total de pedidos realizados
Select CodigoDoFuncionario, count(*) from Pedidos
group by CodigoDoFuncionario

-- Rela��o dos Clientes, total de pedidos realizados e o total do faturamento
Select p.CodigoDoCliente, count(*) TotalPedidos, SUM (d.Quantidade*d.PrecoUnit�rio) from Pedidos p
JOIN Detalhes_do_Pedido d
ON p.NumeroDoPedido = d.NumeroDoPedido
group by p.CodigoDoCliente
order by TotalPedidos desc

-- Rela��o de todos os clientes e a quantidade de pedidos
Select p.CodigoDoCliente,Count(*) as QuantPedidos From Pedidos p
right JOIN Clientes c
ON p.CodigoDoCliente=c.CodigoDoCliente
group by p.CodigoDoCliente



