-- Lista de exercícios 06

--1. Exibir o total de frete pago.

SELECT SUM(ValorFrete) AS TotalFretePago
FROM Fretes;

--2. Quantos funcionários foram contratados em 1992.

SELECT COUNT(*) AS TotalFuncionariosContratados
FROM Funcionarios
WHERE YEAR(DataContratacao) = 1992;

--3. Quantos fornecedores são da Alemanha.

SELECT COUNT(*) AS TotalFornecedoresAlemanha
FROM Fornecedores
WHERE PaisOrigem = 'Alemanha';

--4. Qual o total de quantidades vendidas.

SELECT SUM(QuantidadeVendida) AS TotalQuantidadesVendidas
FROM Vendas;

--5. Qual o valor do frete mais caro.

SELECT MAX(ValorFrete) AS ValorFreteMaisCaro
FROM Fretes;

--6. Qual o valor do desconto mais barato.

SELECT MIN(ValorDesconto) AS ValorDescontoMaisBarato
FROM Descontos;

--7. Quantos produtos são da categoria Condimentos (CódigoDaCategoria = 2).

SELECT COUNT(*) AS TotalProdutosCondimentos
FROM Produtos
WHERE CódigoDaCategoria = 2;

--8. Quantas categorias começam com a letra “C” (nome da categoria).

SELECT COUNT(*) AS TotalCategoriasComC
FROM Categorias
WHERE NomeDaCategoria LIKE 'C%';

--9. Quantos produtos estão com o estoque abaixo do nível de reposição.

SELECT COUNT(*) AS TotalProdutosAbaixoReposicao
FROM Produtos
WHERE EstoqueAtual < NivelReposicao;

--10. Qual o valor total dos preços unitários em Produtos.

SELECT SUM(PrecoUnitario) AS ValorTotalPrecoUnitario
FROM Produtos;

--11. Quanto já foi vendido (PreçoUnitário * Quantidade) do produto cujo código é 51.

SELECT (PrecoUnitario * Quantidade) AS ValorTotalVendido
FROM Vendas
WHERE CodigoProduto = 51;

--12. Quantos pedidos foram feitos pelo cliente cujo código é “ROMEY” no ano de 1996.

SELECT COUNT(*) AS TotalPedidos
FROM Pedidos
WHERE CodigoCliente = 'ROMEY' AND YEAR(DataPedido) = 1996;

--13. Quantos funcionários fazem aniversário no mês de julho.

SELECT COUNT(*) AS TotalFuncionariosAniversarioJulho
FROM Funcionarios
WHERE MONTH(DataNascimento) = 7;

--14. Quantos produtos começam com a “C” ou “G” ou “N”.

SELECT COUNT(*) AS TotalProdutosCGN
FROM Produtos
WHERE NomeProduto LIKE 'C%' OR NomeProduto LIKE 'G%' OR NomeProduto LIKE 'N%';

--15. Quantos clientes estão localizados na Alemanha, México ou Reino Unido.

SELECT COUNT(*) AS TotalClientes
FROM Clientes
WHERE Pais IN ('Alemanha', 'México', 'Reino Unido');

--16. Quantos clientes não possuem fax.

SELECT COUNT(*) AS TotalClientesSemFax
FROM Clientes
WHERE Fax IS NULL OR Fax = '';

--17. Qual o total existente em estoque (PreçoUnitário*UnidadesEmEstoque).

SELECT SUM(PrecoUnitario * UnidadesEmEstoque) AS ValorTotalEmEstoque
FROM Produtos;

--18. Qual o total já vendido (PreçoUnitário*Quantidade).

SELECT SUM(PrecoUnitario * Quantidade) AS ValorTotalVendido
FROM Vendas;

--19. Qual o total vendido (PreçoUnitário*Quantidade) do produto cujo código é 19.

SELECT SUM(PrecoUnitario * Quantidade) AS TotalVendidoProduto19
FROM Vendas
WHERE CodigoProduto = 19;

--20. Quanto de frete foi pago para os pedidos feitos pelo cliente cujo código é “LILAS”.

SELECT SUM(ValorFrete) AS TotalFretePago
FROM Pedidos
WHERE CodigoCliente = 'LILAS';
