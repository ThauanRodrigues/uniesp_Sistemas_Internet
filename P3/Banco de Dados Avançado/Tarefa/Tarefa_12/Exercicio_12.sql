-- 1. Crie uma visão chamada “View_FornecedorPais” que exiba “NomeDaEmpresa”,“Endereco” e “Pais” da tabela “Fornecedores”. --
CREATE VIEW View_FornecedorPais AS
SELECT NomeDaEmpresa, Endereco, Pais
FROM Fornecedores;

--2. Crie uma visão chamada “View_Funcionarios” que mostre os funcionários cujo tratamento seja “Sra.” da tabela “Funcionarios”.
CREATE VIEW View_Funcionarios AS
SELECT tratamento
FROM Funcionarios
WHERE tratamento = 'Sra'

-- 3. Crie uma visão chamada “View_TotalPedidosPorCliente” que exiba o “NomeDaEmpresa” e o “TotalPedidos”.--
CREATE VIEW View_TotalPedidosPorCliente AS
SELECT c.NomeDaEmpresa, COUNT(p.NumeroDoPedido) AS TotalPedidos
FROM Clientes c
LEFT JOIN Pedidos p ON c.CodigoDoCliente = p.CodigoDoCliente
GROUP BY c.NomeDaEmpresa;

-- 4. Crie uma visão chamada “View_TotalFuncionario” que combine dados das tabelas“Funcionarios” e “Pedidos” para mostrar “Nome”, “Cargo” e o total de pedidos feitopor cada funcionário. --
CREATE VIEW View_TotalFuncionario AS
SELECT f.Nome AS NomeFuncionario, f.Cargo, COUNT(p.NumeroDoPedido) AS TotalPedidos
FROM Funcionarios f
LEFT JOIN Pedidos p ON f.CodigoDoFuncionario = p.CodigoDoFuncionario
GROUP BY f.Nome, f.Cargo;


-- 5. Altere a visão “View_FornecedorPais” para incluir a coluna “Cidade”. --
ALTER VIEW View_FornecedorPais AS
SELECT NomeDaEmpresa, Endereco, Pais, Cidade
FROM Fornecedores;


-- 6. Crie uma visão chamada “View_TotalCargo” que combine dados das tabelas“Funcionarios” e “Pedidos” para mostrar “Nome”, “Cargo” e o total de pedidos feitopor cada Cargo. --
CREATE VIEW View_TotalCargo AS
SELECT f.Cargo, COUNT(p.NumeroDoPedido) AS TotalPedidos
FROM Funcionarios f
LEFT JOIN Pedidos p ON f.CodigoDoFuncionario = p.CodigoDoFuncionario
GROUP BY f.Cargo;


-- 7. Exclua a visão “View_TotalFuncionario”. -- 
DROP VIEW View_TotalFuncionario


-- 8. Crie uma visão chamada “View_FornecedoresCidade” que mostre apenas o“NomeDaEmpresa”, “Endereco” e “Cidade” da tabela “Fornecedores”, cuja cidade esteja entre London, Osaka, Berlin e São Paulo.--
CREATE VIEW View_FornecedoresCidade AS
SELECT NomeDaEmpresa, Endereco, Cidade
FROM Fornecedores
WHERE Cidade IN ('London', 'Osaka', 'Berlin', 'São Paulo');


-- 9. Faça uma consulta à visão “View_FornecedoresCidade” para mostrar todos os clientes que moram em “São Paulo”.--
select * from View_FornecedoresCidade
WHERE Cidade = 'São Paulo'


-- 10. Faça uma consulta à visão “TotalCargo” para mostrar todos os Funcionários com cargo “Representante de Vendas”. --
SELECT *
FROM View_TotalCargo
WHERE Cargo = 'Representante de Vendas';
