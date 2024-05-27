-- Selecionando campos da tabela Clientes
select * from Clientes

--Criando uma View
CREATE VIEW ClientesAlemanha AS
SELECT CodigoDoCliente, NomeDaEmpresa, NomeDoContato, Endereco
FROM Clientes
WHERE Cidade = 'Alemanha';

--Executando uma View
select * from ClientesAlemanha

--Alterando uma View
ALTER VIEW ClientesAlemanha AS
SELECT CodigoDoCliente, NomeDaEmpresa, NomeDoContato, Endereco
FROM Clientes
WHERE Cidade = 'Berlin';

--Apagando uma View
DROP VIEW ClientesAlemanha




DROP VIEW NOME_DA_VIEW



