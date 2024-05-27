-- Lista de exercícios 03

-- 1. Exibir o CódigoDoProduto, Desconto de todos os produtos já vendidos.

SELECT CodigoDoProduto, PrecoUnitario
FROM Produtos;

-- 2. Exibir o CódigoDoProduto de todos os produtos já comercializados.

SELECT DISTINCT CodigoDoProduto
FROM Produtos;

-- 3. Exibir o CódigoDoCliente de todos os clientes que já fizeram solicitação de pedidos.

SELECT DISTINCT CodigoDoCliente
FROM Pedidos;

-- 4. Exibir o NomeDoCliente, Endereço e uma coluna adicional com a palavra “Cliente preferencial”.

SELECT NomeDoContato, Endereco, 'Cliente preferencial' AS Status
FROM Clientes;

-- 5. Exibir os 25% dos registros existentes na tabela Produtos.

SELECT TOP 25 PERCENT *
FROM Produtos;

-- 6. Exibir os 50% dos registros existentes na tabela Funcionários.

SELECT TOP 50 PERCENT *
FROM Funcionarios;

-- 7. Exibir os 10% dos registros existentes na tabela Pedido.

SELECT TOP 10 PERCENT *
FROM Pedidos;

-- 8. Exibir os 17% dos registros existentes na tabela Fornecedores.

SELECT TOP 17 PERCENT *
FROM Fornecedores;

-- 9. Exibir os 85% dos registros existentes na tabela Categoria.

SELECT TOP 85 PERCENT *
FROM Categorias;

-- 10. Exibir todas as cidades dos funcionários sem haver repetição de linhas.

SELECT DISTINCT Cidade
FROM Funcionarios;

-- 11. Exibir todas as regiões dos funcionários sem haver repetição de linhas.

SELECT DISTINCT Regiao
FROM Funcionarios;

-- 12. Exibir todos os países dos fornecedores sem haver repetição de linhas.

SELECT DISTINCT Pais
FROM Fornecedores;

-- 13. Exibir o código do cliente que já fizeram pedido em nossa loja, sem haver repetição de linha.

SELECT DISTINCT CodigoDoCliente
FROM Pedidos;

-- 14. Exibir o código de todos os produtos que já foram vendidos em nossa loja, sem haver repetição de linhas.

SELECT DISTINCT CodigoDoProduto
FROM Produtos;

-- 15. Exibir o CódigoDoProduto, NomeDoProduto, PreçoUnitário e uma coluna adicional com um acréscimo de 7% sobre o PreçoUnitário da tabela Produtos.

SELECT CodigoDoProduto, NomeDoProduto, PrecoUnitario, PrecoUnitario * 1.07 AS 'Preço com Acréscimo'
FROM Produtos;

-- 16. Exibir o NúmeroDoPedido, PreçoUnitário, Desconto e uma coluna adicional com a diferença entre o PreçoUnitário e o Desconto (é dado em percentagem), com o título “Preço Final”.

SELECT NumeroDoPedido, PrecoUnitário, Desconto, (PrecoUnitário - Desconto) AS 'Preço Final'
FROM Detalhes_Do_Pedido;

-- 17. Exibir o NúmeroDoPedido, uma coluna adicional com o preço total (PreçoUnitário * Quantidade) com o título “Preço Total” e uma coluna adicional com o preço final ((PreçoUnitário * Quantidade) – Desconto (é dado em percentagem)) com o título “Preço Final” da tabela DetalheDoPedido.

SELECT NumeroDoPedido, (PrecoUnitário * Quantidade) AS 'Preço Total', ((PrecoUnitário * Quantidade) - Desconto) AS 'Preço Final'
FROM Detalhes_Do_Pedido;

-- 18. Exibir o PreçoUnitário, uma coluna adicional com o preço unitário acrescido de 25%, uma coluna adicional com o preço unitário acrescido de 35% e uma coluna adicional com o preço unitário acrescido de 45%, da tabela Produtos, coloque um título para cada coluna adicional.

SELECT PrecoUnitario, PrecoUnitario * 1.25 AS 'Preço +25%', PrecoUnitario * 1.35 AS 'Preço +35%', PrecoUnitario * 1.45 AS 'Preço +45%'
FROM Produtos;

-- 19. Exibir o NúmeroDoPedido, Frete, uma coluna adicional com o Frete acrescido de 5% e uma coluna adicional com o Frete acrescido de 10%, da tabela Pedido, coloque um título para cada coluna adicional.

SELECT NumeroDoPedido, Frete, Frete * 1.05 AS 'Frete +5%', Frete * 1.1 AS 'Frete +10%'
FROM Pedidos;

-- 20. Exibir o CódigoDoProduto, NomeDoProduto, NívelDeReposição e uma coluna adicional com o NívelDeReposição acrescido de 5, coloque um título da coluna que você adicionou, da tabela Produtos.

SELECT CodigoDoProduto, NomeDoProduto, NivelDeReposicao, (NivelDeReposicao + 5) AS 'Novo Nível de Reposição'
FROM Produtos;

-- 21. Exibir o CódigoDoProduto, uma coluna adicional com o total em estoque (PreçoUnitário * UnidadesEmEstoque) com o título “Total em Estoque” da tabela Produtos.

SELECT CodigoDoProduto, (PrecoUnitario * UnidadesEmEstoque) AS 'Total em Estoque'
FROM Produtos;

-- 22. Exibir o NúmeroDoPedido, CódigoDoProduto, PreçoUnitário, Quantidade, uma coluna com o preço total acrescido de 20% com o título “Cheque p/ 30 dias”, uma coluna com o preço total acrescido de 30% com o título “Cheque p/ 60 dias” e uma coluna com o preço total descontado de 15% com o título “À vista”, da tabela DetalhesDoPedido.

SELECT NumeroDoPedido, CodigoDoProduto, PrecoUnitário, Quantidade,
       (PrecoUnitário * Quantidade * 1.20) AS 'Cheque p/ 30 dias',
       (PrecoUnitário * Quantidade * 1.30) AS 'Cheque p/ 60 dias',
       (PrecoUnitário * Quantidade * 0.85) AS 'À vista'
FROM Detalhes_Do_Pedido;

-- 23. Exibir o CódigoDoProduto, NomeDoProduto, NívelDeReposição e uma coluna adicional com um acréscimo de 5 no NívelDeReposição, da tabela Produtos.

SELECT CodigoDoProduto, NomeDoProduto, NivelDeReposicao, (NivelDeReposicao + 5) AS 'Nível com Acréscimo'
FROM Produtos;

-- 24. Exibir o NúmeroDoPedido, CódigoDoCliente com título “Cliente”, CódigoDoFuncionário e uma coluna com o valor do frete descontado 7% e título “Frete c/ desconto”.

SELECT NumeroDoPedido, CodigoDoCliente AS 'Cliente', CodigoDoFuncionario, Frete * 0.93 AS 'Frete c/ desconto'
FROM Pedidos;

-- 25. Exibir o Nome e Sobrenome dos funcionários por ordem decrescente de nome.

SELECT Nome, Sobrenome
FROM Funcionarios
ORDER BY Nome DESC;

-- 26. Exibir o CódigoDoProduto, NomeDoProduto e PreçoUnitário por ordem crescente de NomeDoProduto.

SELECT CodigoDoProduto, NomeDoProduto, PrecoUnitario
FROM Produtos
ORDER BY NomeDoProduto ASC;

-- 27. Exibir o CódigoDoProduto com título “Cód.”, NomeDoProduto com título “Produto” e PreçoUnitário com título “P. Unitário”, por ordem decrescente de CódigoDoProduto.

SELECT CodigoDoProduto AS 'Cód.', NomeDoProduto AS 'Produto', PrecoUnitario AS 'P. Unitário'
FROM Produtos
ORDER BY CodigoDoProduto DESC;

-- 28. Exibir País, Região, CódigoDoFornecedor, NomeDaEmpresa e NomeDoContato da tabela Fornecedores por ordem crescente de País, decrescente de Região e crescente de NomeDaEmpresa.

SELECT Pais, Regiao, CodigoDoFornecedor, NomeDaEmpresa, NomeDoContato
FROM Fornecedores
ORDER BY Pais ASC, Regiao DESC, NomeDaEmpresa ASC;

-- 29. Exibir o CódigoDoFuncionário, SobreNome e Nome dos funcionários por ordem crescente de País.

SELECT CodigoDoFuncionario, SobreNome, Nome
FROM Funcionarios
ORDER BY Pais ASC;
