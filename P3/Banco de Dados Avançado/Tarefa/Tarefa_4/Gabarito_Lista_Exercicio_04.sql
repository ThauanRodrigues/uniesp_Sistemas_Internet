-- Lista de exercícios 04

-- 1. Exibir todos os produtos que apresentem preço unitário entre R$ 10,00 e R$ 30,00.

SELECT Nome_do_Produto, Preco_Unitario
FROM Produtos
WHERE Preco_Unitario BETWEEN 10 AND 30;

-- 2. Exibir todos os produtos com preço unitários maior que R$ 100,00.

SELECT Nome_do_Produto, Preco_Unitario
FROM Produtos
WHERE Preco_Unitario > 100;

-- 3. Exibir todos os funcionários com número de telefone desconhecido.

SELECT Nome_do_Funcionario, Numero_de_Telefone
FROM Funcionarios
WHERE Numero_de_Telefone IS NULL;

-- 4. Exibir todos os produtos que estejam com o estoque real (UnidadeEmEstoque) abaixo
do estoque mínimo (NívelDeReposição).

SELECT Nome_do_Produto, UnidadeEmEstoque, NívelDeReposição
FROM Produtos
WHERE UnidadeEmEstoque < NívelDeReposição;

-- 5. Exibir todos os produtos cujo código da categoria seja 1, 2 ou 3 e o preço unitário esteja entre R$10,00 e R$ 50,00.

SELECT * FROM Produtos
WHERE CodigoCategoria IN (1, 2, 3)
AND PrecoUnitario BETWEEN 10.00 AND 50.00;

-- 6. Exibir todos os clientes que não tem fax.

SELECT * FROM Clientes
WHERE Fax IS NULL;

-- 7. Exibir todos os funcionários que nasceram entre 01/01/55 e 31/12/63 ordenados pelo
-- nome em ordem ascendente.

SELECT * FROM Funcionarios
WHERE DataNascimento BETWEEN '1955-01-01' AND '1963-12-31'
ORDER BY Nome ASC;

-- 8. Exibir os funcionários cujo tratamento seja “Sr.”, ordenados pelo nome em ordem
-- ascendente.

SELECT * FROM Funcionarios
WHERE Tratamento = 'Sr.'
ORDER BY Nome ASC;

-- 9. Exibir o código dos clientes que já pagaram mais de R$ 100,00 de frete.

SELECT CodigoCliente FROM Pedidos
WHERE ValorFrete > 100.00;

-- 10. Exibir todos os dados dos funcionários cujo tratamento seja “Dr.”, que moram no EUA
-- e o seu telefone apresente os números “555”, ordenados pelo nome em ordem ascendente.

SELECT * 
FROM Funcionarios 
WHERE Tratamento = 'Dr.' AND Pais = 'EUA' AND Telefone LIKE '%555%' 
ORDER BY Nome ASC;

-- 11. Exibir CódigoDoProduto, NomeDoProduto e PreçoUnitário dos produtos com
-- UnidadesEmEstoque menor ou igual a 3 e o CódigoDaCategoria diferente de 1 ou 3,
-- ordenados pelo nome do produto em ordem descendente.

SELECT CódigoDoProduto, NomeDoProduto, PreçoUnitário 
FROM Produtos 
WHERE UnidadesEmEstoque <= 3 AND CódigoDaCategoria NOT IN (1, 3) 
ORDER BY NomeDoProduto DESC;

-- 12. Exibir os funcionários que nasceram antes de 31/12/60 na cidade de “London”,
-- ordenados pelo nome em ordem ascendente.

SELECT * 
FROM Funcionarios 
WHERE DataDeNascimento < '1960-12-31' AND Cidade = 'London' 
ORDER BY Nome ASC;

-- 13. Exibir o nome (NomeDoProduto) e o preço de venda (PreçoUnitário) dos produtos cuja
-- descrição contenha a palavra "chocolate" com preço de venda maior ou igual a R$
-- 15,00, ordenados pelo preço de venda em ordem descendente.

SELECT NomeDoProduto, PreçoUnitário 
FROM Produtos 
WHERE Descrição LIKE '%chocolate%' AND PreçoUnitário >= 15.00 
ORDER BY PreçoUnitário DESC;

-- 14. Exibir o código e o nome dos funcionários, exceto aqueles cujos nomes iniciam pelas
-- letras A ou M, ordenados pelo nome em ordem ascendente.

SELECT Código, Nome 
FROM Funcionarios 
WHERE Nome NOT LIKE 'A%' AND Nome NOT LIKE 'M%' 
ORDER BY Nome ASC;

-- 15. Exibir todos os pedidos atendidos pela transportadora Federal Shipping (Via = 3), e
-- com valor do frete maior ou igual a R$ 100,00, ordenados pelo NúmeroDoPedido e em
-- ordem ascendente.

SELECT * 
FROM Pedidos 
WHERE Via = 3 AND ValorDoFrete >= 100 
ORDER BY NúmeroDoPedido ASC;

-- 16. Exibir os clientes que começam com a letra “C”.

SELECT * 
FROM Clientes 
WHERE NomeDoCliente LIKE 'C%';

-- 17. Exibir os funcionários que tenham na segunda letra do seu sobrenome a letra “a”.

SELECT * 
FROM Funcionarios 
WHERE Sobrenome LIKE '_a%';

-- 18. Exibir os funcionários estrangeiros.

SELECT * 
FROM Funcionarios 
WHERE País != 'Brasil';

-- 19. Exibir os funcionários que nasceram nos Estados Unidos.

SELECT * 
FROM Funcionarios 
WHERE País != 'Estados Unidos';

-- 20. Exibir CódigoDaCategoria, NomeDaCategoria e Descrição das categorias que
-- começam com a letra “B” ou “C”.

SELECT CódigoDaCategoria, NomeDaCategoria, Descrição 
FROM Categorias 
WHERE NomeDaCategoria LIKE 'B%' OR NomeDaCategoria LIKE 'C%';

-- 21. Exibir os funcionários que têm TelefoneResidencial.

SELECT * FROM Funcionarios
WHERE TelefoneResidencial IS NOT NULL;

-- 22. Exibir os funcionários que não têm TelefoneResidencial

SELECT * FROM Funcionarios
WHERE TelefoneResidencial IS NULL;

-- 23. Exibir o NúmeroDoPedido,CódigoDoProduto e Preço Total (PreçoUnitário *
-- Quantidade) dos produtos cujo preço Total seja maior ou igual a R$200,00.

SELECT NúmeroDoPedido, CódigoDoProduto, PreçoUnitário * Quantidade AS 'Preço Total'
FROM Pedidos
WHERE PreçoUnitário * Quantidade >= 200;

-- 24. Exibir o CódigoDoFornecedor, NomeDaEmpresa e NomeDoContato dos fornecedores
-- cujo país seja a Alemanha ou Japão.

SELECT CódigoDoFornecedor, NomeDaEmpresa, NomeDoContato
FROM Fornecedores
WHERE País IN ('Alemanha', 'Japão');

-- 25. Exibir os fornecedores que não são da Alemanha nem do Japão.

SELECT CódigoDoFornecedor, NomeDaEmpresa, NomeDoContato
FROM Fornecedores
WHERE País NOT IN ('Alemanha', 'Japão');

-- 26. Exibir o preço de custo (PreçoUnitário), o preço de venda (PreçoUnitário + 25%) e uma
-- coluna com a diferença existente entre esses dois preços, da tabela Produtos, apenas
-- dos produtos que apresentam preço de venda maior que R$ 200,00.

SELECT 
    PreçoUnitário AS 'Preço de Custo',
    PreçoUnitário * 1.25 AS 'Preço de Venda',
    (PreçoUnitário * 1.25) - PreçoUnitário AS 'Diferença'
FROM Produtos
HAVING 'Preço de Venda' > 200;

-- 27. Exibir os fornecedores cujo nome termine com a letra “s”.

SELECT * FROM Fornecedores
WHERE Nome LIKE '%s';

-- 28. Exibir todos os pedidos que apresentam frete menor que R$ 30,00.

SELECT * FROM Pedidos
WHERE Frete < 30.00;

-- 29. Exibir os pedidos que foram feitos para o México.

SELECT * FROM Pedidos
WHERE PaisDeDestino = 'México';

-- 30. Exibir os pedidos que foram feitos para a Alemanha, Itália e França.

SELECT * FROM Pedidos
WHERE PaisDestino = 'Alemanha' OR PaisDestino = 'Itália' OR PaisDestino = 'França';

-- 31. Exibir os funcionários que pertença ao cargo de “Representante de Vendas” e o
-- tratamento seja “Sr.”.

SELECT * FROM Funcionarios
WHERE Cargo = 'Representante de Vendas' AND Tratamento = 'Sr.';

-- 32. Exibir os funcionários que não são “Sra.”.

SELECT * FROM Funcionarios
WHERE Titulo NOT LIKE 'Sra.%';


-- 33. Exibir o nome dos funcionários e uma coluna com a idade deles com o título “Idade”,
-- apenas dos maiores de 20 anos.

SELECT Nome, TIMESTAMPDIFF(YEAR, DataNascimento, CURDATE()) AS Idade
FROM Funcionarios
WHERE TIMESTAMPDIFF(YEAR, DataDeNascimento, CURDATE()) > 20;

-- 34. Exibir os funcionários contratados entre os meses de Abril e Novembro de 1993.

SELECT *
FROM Funcionarios
WHERE DataContratacao BETWEEN '1993-04-01' AND '1993-11-30';

-- 35. Exibir os funcionários que são supervisionados por “Fuller, Andrew”.

SELECT *
FROM Funcionarios
WHERE Supervisor = 'Fuller, Andrew';

-- 36. Exibir o CódigoDaCategoria e o NomeDaCategoria que tenham no seu nome “massas”
-- ou “doces”.

SELECT CodigoDaCategoria, NomeDaCategoria
FROM Categorias
WHERE NomeDaCategoria LIKE '%massas%' OR NomeDaCategoria LIKE '%doces%';

-- 37. Exibir o NúmeroDoPedido e o CódigoDoCliente, para os pedidos que passaram mais
-- de 30 dias para serem entregue.

SELECT NumeroDoPedido, CodigoDoCliente
FROM Pedidos
WHERE DATEDIFF(DataDeEntrega, DataDoPedido) > 30;

-- 38. Exibir o NúmeroDoPedido dos pedidos que passaram entre 10 e 15 dias para serem
-- entregues.

SELECT NumeroDoPedido
FROM Pedidos
WHERE DATEDIFF(DataDeEntrega, DataDoPedido) BETWEEN 10 AND 15;

-- 39. Exibir os pedidos que ainda não foram enviados.

SELECT NumeroDoPedido
FROM Pedidos
WHERE DataDeEnvio IS NULL;

-- 40. Exibir NúmeroDoPedido e o CódigoDoProduto da tabela DetalheDoPedido cuja
-- quantidade seja maior ou igual a 40.

SELECT NumeroDoPedido, CodigoDoProduto
FROM DetalheDoPedido
WHERE Quantidade >= 40;

-- 41. Exibir NúmeroDoPedido com o título “Pedido” e o CódigoDoProduto com o título
-- “Produto”, da tabela DetalheDoPedido cujo desconto foi entre 10 e 15%.

SELECT NumeroDoPedido AS Pedido, CodigoDoProduto AS Produto
FROM DetalheDoPedido
WHERE Desconto BETWEEN 0.10 AND 0.15;

-- 42. Exibir os pedidos que foram entregue no segundo semestre de 1996.

SELECT * FROM Pedidos
WHERE DataDeEntrega BETWEEN '1996-07-01' AND '1996-12-31';

-- 43. Exibir os pedidos que foram entregue no segundo trimestre de 1997.

SELECT * FROM Pedidos
WHERE DataDeEntrega BETWEEN '1997-04-01' AND '1997-06-30';

-- 44. Exibir o nome dos funcionários que fazem aniversário no mês de Agosto.

SELECT Nome FROM Funcionarios
WHERE MONTH(DataDeNascimento) = 8;

-- 45. Exibir o código da transportadora que não tem telefone.

SELECT Codigo FROM Transportadoras
WHERE Telefone IS NULL;

-- 46. Exibir o nome da Empresa, com o título “Empresa”, o nome do Contato, com o título
-- “Contato” e o telefone dos fornecedores que não apresentam fax.

SELECT Empresa AS 'Empresa', Contato AS 'Contato', Telefone
FROM Fornecedores
WHERE Fax IS NULL;

-- 47. Mostrar o nome dos funcionários e a data de contratação, com o título “Data Contrato”, dos que não foram contratados em 1992 e 1994.

SELECT Nome, DataContratacao AS 'Data Contrato'
FROM Funcionarios
WHERE YEAR(DataContratacao) NOT IN (1992, 1994);

-- 48. Mostrar o nome da empresa e o nome dos contatos para os clientes que tenha no seu
-- código a segunda letra “A” e a última “R”.

SELECT Empresa, Contato
FROM Clientes
WHERE SUBSTRING(Codigo, 2, 1) = 'A' AND RIGHT(Codigo, 1) = 'R';

-- 49. Exibir o número do pedido, com o título “Pedido” e a Data do Pedido, com o título “Dt
-- Pedido” para os pedidos feitos pelos clientes cujo código comece com a letra
-- pertencente ao intervalor A – E.

SELECT NumeroPedido AS 'Pedido', DataPedido AS 'Dt Pedido'
FROM Pedidos
WHERE LEFT(CodigoCliente, 1) BETWEEN 'A' AND 'E';

-- 50. Exibir o nome do cliente, o nome do Contato e o código dos clientes cujo nome não
-- seja iniciado com as letras B, E, J e G.

SELECT NomeCliente, NomeContato, Codigo
FROM Clientes
WHERE LEFT(NomeCliente, 1) NOT IN ('B', 'E', 'J', 'G');
