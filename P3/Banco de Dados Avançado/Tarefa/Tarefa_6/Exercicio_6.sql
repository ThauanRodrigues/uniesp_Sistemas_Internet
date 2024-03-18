-- 1.Exibir o total de frete pago.--
Select SUM(Frete) AS 'Total de Frete pagos' From Pedidos

-- 2. Quantos funcionários foram contratados em 1992. --
Select * From Funcionarios
Where YEAR(DataDeContratacao) = 1992

-- 3. Quantos fornecedores são da Alemanha.--
Select * From Fornecedores
Where Pais LIKE '%Alemanha%'

-- 4. Qual o total de quantidades vendidas. --
Select SUM(Quantidade)AS 'Quantidades Vendidas' From Detalhes_do_Pedido


-- 5. Qual o valor do frete mais caro.--
Select MAX(Frete)AS 'Frete mais caro' From Pedidos


-- 6. Qual o valor do desconto mais barato. --
Select MIN(Desconto)AS 'Desconto mais barato' From Detalhes_do_Pedido


-- 7. Quantos produtos são da categoria Condimentos (CódigoDaCategoria = 2). --
Select COUNT(*) AS 'Categoria condimentos'
From Produtos
Where CodigoDaCategoria = 2

-- 8. Quantas categorias começam com a letra “C” (nome da categoria).--
Select COUNT(*) AS 'Categorias que começa, com a letra C' From Categorias
Where NomeDaCategoria LIKE 'C%'


-- 9. Quantos produtos estão com o estoque abaixo do nível de reposição. --
Select COUNT(*) AS 'Estoque abaixo do nivel de reposição'
From Produtos
Where UnidadesEmEstoque < NivelDeReposicao


-- 10.  Qual o valor total dos preços unitários em Produtos. --
Select COUNT(PrecoUnitario) AS 'Valor total'
From Produtos


-- 11.  Quanto já foi vendido (PreçoUnitário * Quantidade) do produto cujo código é 51.--
Select COUNT(PrecoUnitário * Quantidade) AS 'Total vendido'
From Detalhes_do_Pedido
Where CodigoDoProduto = 51


-- 12. Quantos pedidos foram feitos pelo cliente cujo código é “ROMEY” no ano de 1996. --
Select COUNT(*) From Pedidos
Where CodigoDoCliente LIKE 'ROMEY'
AND YEAR(DataDoPedido) = 1996 


-- 13. Quantos funcionários fazem aniversário no mês de julho.  --
Select COUNT(*) AS 'Aniversariantes em Julho' 
From Funcionarios
Where MONTH(DataDeNascimento) IN (7)


-- 14. Quantos produtos começam com a “C” ou “G” ou “N”.  --
SELECT COUNT(*) AS 'Total de Produtos'
FROM Produtos
WHERE LEFT(NomeDoProduto, 1) IN ('C', 'G', 'N');


-- 15. Quantos clientes estão localizados na Alemanha, México ou Reino Unido. --
Select COUNT(*) AS 'Clientes localizados em Alemanha, México ou Reino Unido.' From Clientes
Where Pais IN ('Alemanha', 'México', 'Reino Unido')


-- 16. Quantos clientes não possuem fax.  --
Select COUNT(*) AS 'Não possui Fax' 
From Clientes
Where Fax IS NULL

-- 17. Qual o total existente em estoque (PreçoUnitário*UnidadesEmEstoque). --
SELECT SUM(PrecoUnitario * UnidadesEmEstoque) AS 'Total Existente em Estoque'
FROM Produtos;


-- 18. Qual o total já vendido (PreçoUnitário*Quantidade).  --
Select SUM(PrecoUnitário*Quantidade) AS 'Total Vendidos' 
From Detalhes_do_Pedido


-- 19. Qual o total vendido (PreçoUnitário*Quantidade) do produto cujo código é 19. --
Select SUM(PrecoUnitário*Quantidade) AS 'Total Vendidos'
From Detalhes_do_Pedido
Where CodigoDoProduto = 19


-- 20. Quanto de frete foi pago para os pedidos feitos pelo cliente cujo código é “LILAS”.--
Select COUNT(Frete) AS 'Fretes pagos e cod. igual a LILAS'
From Pedidos
Where CodigoDoCliente = 'LILAS'