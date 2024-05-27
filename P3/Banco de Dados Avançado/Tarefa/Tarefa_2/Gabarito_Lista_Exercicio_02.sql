-- Lista de exercícios 02

-- 01. Exibir CódigoDoCliente, NomeDaEmpresa e Endereço de todos os clientes cadastrados na empresa.

SELECT CódigoDoCliente, NomeDaEmpresa, Endereço
FROM Clientes;

-- 02. Exibir SobreNome, Nome, DataDeNascimento, DataDeContratação de todos os funcionários da empresa.

SELECT SobreNome, Nome, DataDeNascimento, DataDeContratação
FROM Funcionários;

-- 03. Exibir CódigoDaCategoria, NomeDaCategoria e Descrição das categorias existentes.

SELECT CódigoDaCategoria, NomeDaCategoria, Descrição
FROM Categorias;

-- 04. Exibir NomeDaEmpresa, NomeDoContato e Telefone de todos os fornecedores da empresa.

SELECT NomeDaEmpresa, NomeDoContato, Telefone
FROM Fornecedores;

-- 05. Exibir CódigoDoProduto, NomeDoProduto e PreçoUnitário de todos os produtos da empresa.

SELECT CódigoDoProduto, NomeDoProduto, PreçoUnitário
FROM Produtos;

-- 06. Exibir CódigoDaTransportadora, NomeDaEmpresa e Telefone das transportadoras cadastradas na empresa.

SELECT CódigoDaTransportadora, NomeDaEmpresa, Telefone
FROM Transportadoras;

-- 07. Exibir NomeDoCliente, Endereço e uma coluna adicional com a palavra “Cliente preferencial”.

SELECT NomeDoCliente, Endereço, 'Cliente preferencial' AS Preferencial
FROM Clientes;

-- 08. Exibir CódigoDoProduto, uma coluna adicional “Produto existente” e o NomeDoProduto.

SELECT CódigoDoProduto, 'Produto existente' AS ProdutoExistente, NomeDoProduto
FROM Produtos;

-- 09. Exibir Endereço, TelefoneResidencial, uma coluna adicional “Pertence ao quadro”, ramal e uma coluna adicional “Ativo” da tabela Funcionário.

SELECT Endereço, TelefoneResidencial, 'Pertence ao quadro' AS PertenceAoQuadro, Ramal, 'Ativo' AS Ativo
FROM Funcionários;

-- 10. Exibir NomeDaCategoria, Descrição e uma coluna adicional “Definição” da tabela Categoria.

SELECT NomeDaCategoria, Descrição, 'Aprovado' AS Definição
FROM Categorias;

-- 11. Exibir os 5 primeiros registros da tabela Pedido.

SELECT *
FROM Pedido
LIMIT 5;

-- 12. Exibir os 15 primeiros registros da tabela Funcionário.

SELECT *
FROM Funcionários
LIMIT 15;

-- 13. Exibir o NomeDaEmpresa dos 3 primeiros registros da tabela Fornecedor.

SELECT NomeDaEmpresa
FROM Fornecedores
LIMIT 3;

-- 14. Exibir os 20 primeiros registros da tabela Produtos.

SELECT *
FROM Produtos
LIMIT 20;

-- 15. Exibir os 2 primeiros registros da tabela Categoria.

SELECT *
FROM Categorias
LIMIT 2;

-- 16. Exibir o Nome, Cargo, Tratamento dos funcionários da empresa, dando os títulos: Funcionário, Função e Título respectivamente.

SELECT Nome AS Funcionário, Cargo AS Função, Tratamento AS Título
FROM Funcionários;

-- 17. Exibir o NomeDaEmpresa, NomeDoContato e CargoDoContato da tabela Fornecedores, criando um título para cada coluna.

SELECT NomeDaEmpresa AS 'Nome da Empresa', NomeDoContato AS 'Nome do Contato', CargoDoContato AS 'Cargo do Contato'
FROM Fornecedores;

-- 18. Exibir o Nome, TelefoneResidencial com o título “Fone” e Observações com o título “Obs” da tabela Funcionários.

SELECT Nome, TelefoneResidencial AS Fone, Observações AS Obs
FROM Funcionários;

-- 19. Exibir NomeDaCategoria com o título “Categoria”, Descrição com o título “Observação” e uma coluna adicional com o conteúdo “Aprovado” cujo título seja “Situação”, da tabela Categoria.

SELECT NomeDaCategoria AS Categoria, Descrição AS Observação, 'Aprovado' AS Situação
FROM Categorias;

-- 20. Exibir o CódigoDoProduto, NomeDoProduto, PreçoUnitário e uma coluna adicional com um acréscimo de 7% sobre o PreçoUnitário da tabela Produtos.

SELECT CódigoDoProduto, NomeDoProduto, PreçoUnitário, (PreçoUnitário * 1.07) AS 'Preço com Acréscimo'
FROM Produtos;

-- 21. Exibir o Nome e Sobrenome dos funcionários por ordem decrescente de nome.

SELECT Nome, SobreNome
FROM Funcionários
ORDER BY Nome DESC;

-- 22. Exibir o CódigoDoProduto, NomeDoProduto e PreçoUnitário por ordem crescente de NomeDoProduto.

SELECT CódigoDoProduto, NomeDoProduto, PreçoUnitário
FROM Produtos
ORDER BY NomeDoProduto ASC;

-- 23. Exibir o CódigoDoProduto com título “Cód.”, NomeDoProduto com título “Produto” e PreçoUnitário com título “P. Unitário”, por ordem decrescente de CódigoDoProduto.

SELECT CódigoDoProduto AS 'Cód.', NomeDoProduto AS 'Produto', PreçoUnitário AS 'P. Unitário'
FROM Produtos
ORDER BY CódigoDoProduto DESC;

-- 24. Exibir País, Região, CódigoDoFornecedor, NomeDaEmpresa e NomeDoContato da tabela Fornecedores por ordem crescente de País, decrescente de Região e crescente de NomeDaEmpresa.

SELECT País, Região, CódigoDoFornecedor, NomeDaEmpresa, NomeDoContato
FROM Fornecedores
ORDER BY País ASC, Região DESC, NomeDaEmpresa ASC;

-- 25. Exibir o CódigoDoFuncionário, SobreNome e Nome dos funcionários por ordem crescente de País.

SELECT CódigoDoFuncionário, SobreNome, Nome
FROM Funcionários
ORDER BY País ASC;
