-- 1. Exibir todos os produtos que apresentem preço unitário entre R$10,00 e R$ 30,00.--
Select * From Produtos
Where PrecoUnitario Between 10.00 and 30.00

-- 2. Exibir todos os produtos com preço unitários maior que R$ 100,00. --
Select * From Produtos
Where PrecoUnitario > 100.00

-- 3. Exibir todos os funcionários com número de telefone desconhecido. --
Select * From Funcionarios 
Where TelefoneResidencial IS NULL

-- 4. Exibir todos os produtos que estejam com o estoque real (UnidadeEmEstoque) abaixo do estoque mínimo (NívelDeReposição). --
Select * From Produtos
Where UnidadesEmEstoque < NivelDeReposicao

-- 5.Exibir todos os produtos cujo código da categoria seja 1, 2 ou 3 e o preço unitário esteja entre R$10,00 e R$ 50,00. -- 
Select * From Produtos
Where CodigoDaCategoria IN (1,2,3)
And PrecoUnitario Between 10.00 and 50.00

-- 6. Exibir todos os clientes que não tem fax. --
Select * From Clientes
Where Fax IS NULL

-- 7. Exibir todos os funcionários que nasceram entre 01/01/55 e 31/12/63 ordenados pelo nome em ordem ascendente. -- 
Select * From Funcionarios
Where DataDeNascimento Between '1955-01-01' AND '1963-12-31'
Order by Nome ASC

-- 8. Exibir os funcionários cujo tratamento seja “Sr.”, ordenados pelo nome em ordem ascendente.--
Select * From Funcionarios
Where Tratamento = 'Sr.'

-- 9. Exibir o código dos clientes que já pagaram mais de R$ 100,00 de frete. --
Select CodigoDoCliente From Pedidos
Where Frete > 100.00

-- 10.  Exibir todos os dados dos funcionários cujo tratamento seja “Dr.”, que moram no EUA e o seu telefone apresente os números “555”, ordenados pelo nome em ordem ascendente. --
Select * From Funcionarios
Where Tratamento = 'Dr.'AND Pais = 'EUA' AND TelefoneResidencial= '555'
Order By Nome ASC

-- 11. Exibir CódigoDoProduto, NomeDoProduto e PreçoUnitário dos produtos com 
UnidadesEmEstoque menor ou igual a 3 e o CódigoDaCategoria diferente de 1 ou 3, 
ordenados pelo nome do produto em ordem descendente.--
Select CodigoDoProduto, NomeDoProduto, PrecoUnitario 
From Produtos
Where UnidadesEmEstoque <=3 AND
CodigoDoProduto NOT IN (1,3)
Order By NomeDoProduto desc

-- 12. Exibir os funcionários que nasceram antes de 31/12/60 na cidade de “London”, 
ordenados pelo nome em ordem ascendente. --
Select * From Funcionarios
Where DataDeNascimento < '31/12/60' AND cidade = 'London'
Order By Nome ASC


-- 13. Exibir o nome (NomeDoProduto) e o preço de venda (PreçoUnitário) dos produtos cuja 
descrição contenha a palavra "chocolate" com preço de venda maior ou igual a R$ 
15,00, ordenados pelo preço de venda em ordem descendente.--
Select NomeDoProduto, PrecoUnitario 
From Produtos p Join Categorias c on p.CodigoDaCategoria = c.CodigoDaCategoria
Where Descricao LIKE '%chocolate%' AND PrecoUnitario >= 15.00
Order By PrecoUnitario desc


-- 14.  Exibir o código e o nome dos funcionários, exceto aqueles cujos nomes iniciam pelas 
letras A ou M, ordenados pelo nome em ordem ascendente. --
Select CodigoDoFuncionario, Nome From Funcionarios
Where Nome  NOT LIKE 'A%' OR Nome NOT LIKE 'M%'
Order By Nome ASC


-- 15. Exibir todos os pedidos atendidos pela transportadora Federal Shipping (Via = 3), e 
com valor do frete maior ou igual a R$ 100,00, ordenados pelo NúmeroDoPedido e em 
ordem ascendente. --
Select * From Pedidos
Where CodigoDaTransportadora = 3 AND Frete >= 100.00
Order By NumeroDoPedido ASC


-- 16. Exibir os clientes que começam com a letra “C”. --
Select * From Clientes
Where NomeDoContato LIKE 'C%'


-- 17. Exibir os funcionários que tenham na segunda letra do seu sobrenome a letra “a”.--
Select * From Funcionarios
Where Nome like '_A%'


-- 18. Exibir os funcionários estrangeiros. --
Select * From Funcionarios
Where NOT Pais  = 'BR'


-- 19. Exibir os funcionários que nasceram nos Estados Unidos.--
Select * From Funcionarios
Where Pais = 'EUA'


-- 20. Exibir CódigoDaCategoria, NomeDaCategoria e Descrição das categorias que 
começam com a letra “B” ou “C”.--
Select CodigoDaCategoria, NomeDaCategoria, Descricao 
From Categorias
Where NomeDaCategoria LIKE 'B%' OR NomeDaCategoria LIKE 'C%'


-- 21. Exibir os funcionários que têm TelefoneResidencial.--
Select * From Funcionarios
Where TelefoneResidencial IS NOT NULL


-- 22. Exibir os funcionários que não têm TelefoneResidencial -- 
Select * From Funcionarios
Where TelefoneResidencial IS NULL


-- 23. Exibir o NúmeroDoPedido,CódigoDoProduto e Preço Total (PreçoUnitário * 
Quantidade) dos produtos cujo preço Total seja maior ou igual a R$200,00.  -- 
Select NumeroDoPedido, CodigoDoProduto, (PrecoUnitário * Quantidade) AS PrecoTotal
From Detalhes_do_Pedido
Where PrecoUnitário * Quantidade >= 200.00


-- 24. Exibir o CódigoDoFornecedor, NomeDaEmpresa e NomeDoContato dos fornecedores 
cujo país seja a Alemanha ou Japão.  --
Select CodigoDoFornecedor, NomeDaEmpresa, NomeDoContato
From Fornecedores
Where Pais IN ('Alemanha','Japão' ) 

-- 25. Exibir os fornecedores que não são da Alemanha nem do Japão. -- 
Select CodigoDoFornecedor, NomeDaEmpresa, NomeDoContato
From Fornecedores
Where Pais NOT IN ('Alemanha','Japão' ) 

-- 26. Exibir o preço de custo (PreçoUnitário), o preço de venda (PreçoUnitário + 25%) e uma 
coluna com a diferença existente entre esses dois preços,  da tabela Produtos, apenas 
dos produtos que apresentam preço de venda maior que R$ 200,00.  -- 
Select PrecoUnitario AS 'Preço de custo', 
(PrecoUnitario + 1.25) AS 'Preço de venda',
(PrecoUnitario + 1.25) - PrecoUnitario AS 'Diferença de preços'
From Produtos
Where (PrecoUnitario + 1.25) > 200.00


-- 27. Exibir os fornecedores cujo nome termine com a letra “s”. --
Select * From Fornecedores
Where NomeDaEmpresa LIKE '%S'


-- 28. Exibir todos os pedidos que apresentam frete menor que R$ 30,00. --
Select * From Pedidos
Where Frete < 30.00


-- 29. Exibir os pedidos que foram feitos para o México.--
Select * From Pedidos
Where PaisDeDestino IN ('México')


-- 30. Exibir os pedidos que foram feitos para a Alemanha, Itália e França.--
Select * From Pedidos
Where PaisDeDestino IN ('Alemanha','Itália','França')


-- 31. Exibir os funcionários que pertença ao cargo de “Representante de Vendas” e o 
tratamento seja “Sr.”. --
Select * From Funcionarios
Where Cargo = 'Representante de Vendas' AND Tratamento = 'Sr.'


-- 32. Exibir os funcionários que não são “Sra.”. --
Select * From Funcionarios
Where Tratamento NOT IN('Sra.')


-- 33.Exibir o nome dos funcionários e uma coluna com a idade deles com o título “Idade”, apenas dos maiores de 20 anos.--
Select Nome, DATEDIFF(YEAR, DataDeNascimento, '2024-01-01') AS Idade 
From Funcionarios
Where DATEDIFF(YEAR, DataDeNascimento, '2024-01-01') > 20


-- 34. Exibir os funcionários contratados entre os meses de Abril e Novembro de 1993.--
Select * From Funcionarios
Where YEAR(DataDeContratacao) = 1993
AND MONTH(DataDeContratacao) BETWEEN 4 AND 11


-- 35. Exibir os funcionários que são supervisionados por “Fuller, Andrew”.  --
Select * From Funcionarios
Where Supervisor IN (2)

-- 36. Exibir o CódigoDaCategoria e o NomeDaCategoria que tenham no seu nome “massas” ou “doces”--
Select * From Categorias
Where NomeDaCategoria IN ('massas', 'doces')


-- 37. Exibir o NúmeroDoPedido e o CódigoDoCliente, para os pedidos que passaram mais de 30 dias para serem entregue.  --
Select CodigoDoCliente, NumeroDoPedido 
From Pedidos
Where DATEDIFF(DAY, DataDoPedido, DataDeEntrega) > 30


-- 38.  Exibir o NúmeroDoPedido dos pedidos que passaram entre 10 e 15 dias para serem entregues. --
Select NumeroDoPedido From Pedidos
Where DATEDIFF(DAY, DataDoPedido, DataDeEntrega)BETWEEN 10 AND 15


-- 39. Exibir os pedidos que ainda não foram enviados. --
Select * From Pedidos
Where DataDeEnvio IS NULL


-- 40. Exibir NúmeroDoPedido e o CódigoDoProduto da tabela DetalheDoPedido cuja quantidade seja maior ou igual a 40. 
--
Select NumeroDoPedido, CodigoDoProduto 
From Detalhes_do_Pedido
Where Quantidade >= 40


-- 41. Exibir NúmeroDoPedido com o título “Pedido” e o CódigoDoProduto com o título “Produto”, da tabela DetalheDoPedido cujo desconto foi entre 10 e 15%.--
Select NumeroDoPedido AS Pedido, CodigoDoProduto AS Produto
From Detalhes_do_Pedido
Where Desconto BETWEEN 10 AND 15


-- 42. Exibir os pedidos que foram entregue no segundo semestre de 1996. --
Select * From Pedidos
Where DataDeEntrega BETWEEN '1996-07-01' AND '1996-12-01'

-- 43. Exibir os pedidos que foram entregue no segundo trimestre de 1997--
Select * From Pedidos
Where YEAR(DataDeEntrega)= 1997 
AND MONTH(DataDeEntrega) BETWEEN 4 AND 6


-- 44. Exibir o nome dos funcionários que fazem aniversário no mês de Agosto. --
Select Nome From Funcionarios
Where MONTH(DataDeNascimento) IN(8)


-- 45.Exibir o código da transportadora que não tem telefone. --
Select * From Transportadoras
Where Telefone IS NULL


-- 46. Exibir o nome da Empresa, com o título “Empresa”, o nome do Contato, com o título “Contato” e o telefone dos fornecedores que não apresentam fax. --
Select NomeDaEmpresa AS Empresa, NomeDoContato AS Contato, Telefone
From Fornecedores
Where Fax IS NULL


-- 47. Mostrar o nome dos funcionários e a data de contratação, com o título “Data Contrato”, dos que não foram contratados em 1992 e 1994. --
Select Nome, DataDeContratacao AS 'Data Contrato' 
From Funcionarios
Where YEAR(DataDeContratacao) NOT IN (1992, 1994)


-- 48.Mostrar o nome da empresa e o nome dos contatos para os clientes que tenha no seu código a segunda letra “A” e a última “R”. --
Select NomeDoContato, NomeDaEmpresa 
From Clientes
Where CodigoDoCliente LIKE '_A%R'


-- 49.Exibir o número do pedido, com o título “Pedido” e a Data do Pedido, com o título “Dt Pedido” para os pedidos feitos pelos clientes cujo código comece com a letra pertencente ao intervalor A – E.  --
Select NumeroDoPedido AS Pedido, DataDoPedido AS 'Dt Pedido' 
From Pedidos
Where LEFT(CodigoDoCliente, 1) BETWEEN 'A' AND 'E'


-- 50. Exibir o nome do cliente, o nome do Contato e o código dos clientes cujo nome não seja iniciado com as letras B, E, J e G. --
Select NomeDaEmpresa, NomeDoContato 
From Clientes
Where LEFT(CodigoDoCliente,1) NOT IN ('B', 'E','J','G')
