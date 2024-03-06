-- Comandos simples do SELECT

SELECT CodigoDoCliente, NomeDaEmpresa, Endereco
FROM Clientes;

SELECT SobreNome, Nome, DataDeNascimento, DataDeContratacao
FROM Funcionarios;

SELECT CodigoDaCategoria, NomeDaCategoria, Descricao
FROM Categorias;

SELECT NomeDaCategoria
FROM categorias

SELECT *
FROM Produtos
WHERE PrecoUnitario BETWEEN 30 and  33

SELECT *
FROM Produtos
WHERE CodigoDaCategoria IN (2,3)

SELECT *
FROM Produtos
WHERE NomeDoProduto LIKE 'C_e%'

SELECT *
FROM Fornecedores
WHERE Regiao IS NULL

SELECT NomeDoProduto AS Nome
FROM Produtos

SELECT NomeDoProduto AS Nome
FROM Produtos
ORDER BY Nome

SELECT NomeDoProduto AS Nome
FROM Produtos
ORDER BY NomeDoProduto

SELECT NomeDoProduto AS Nome
FROM Produtos
ORDER BY Nome Desc

SELECT DISTINCT CodigoDoFornecedor
FROM Produtos
