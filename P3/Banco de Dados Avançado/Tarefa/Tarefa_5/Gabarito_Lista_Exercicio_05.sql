-- Lista de exercícios 05

-- 1. Exibir o Número do Pedido, o nome da Empresa, o Telefone e o Fax de todos os
-- clientes que realizaram pedidos.

SELECT Pedidos.NumeroPedido, Clientes.NomeEmpresa, Clientes.Telefone, Clientes.Fax
FROM Pedidos
JOIN Clientes ON Pedidos.CodigoCliente = Clientes.Codigo;

-- 2. Exibir o Código do Cliente, o nome da Empresa (Cliente), a Data de solicitação do
-- pedido e o valor do frete pago.

SELECT 
    Cliente.Codigo AS 'Código do Cliente',
    Cliente.NomeEmpresa AS 'Nome da Empresa',
    Pedido.DataSolicitacao AS 'Data de Solicitação',
    Pedido.ValorFrete AS 'Valor do Frete'
FROM 
    Cliente INNER JOIN Pedido
ON 
    Cliente.Codigo = Pedido.CodigoCliente;

-- 3. Informar o Código do Funcionário, nome, Cargo, Código do Cliente e a Data do
-- Pedido de todos os pedidos realizados.

SELECT 
    Funcionario.Codigo AS 'Código do Funcionário',
    Funcionario.Nome AS 'Nome',
    Funcionario.Cargo AS 'Cargo',
    Pedido.CodigoCliente AS 'Código do Cliente',
    Pedido.DataPedido AS 'Data do Pedido'
FROM 
    Funcionario INNER JOIN Pedido
ON 
    Funcionario.Codigo = Pedido.CodigoFuncionario;

-- 4. Exibir o Número do Pedido, a Data do Pedido, a Data de Entrega e o nome da
-- Empresa que fez o transporte.

SELECT 
    Pedido.Numero AS 'Número do Pedido',
    Pedido.DataPedido AS 'Data do Pedido',
    Pedido.DataEntrega AS 'Data de Entrega',
    Transportadora.NomeEmpresa AS 'Nome da Empresa de Transporte'
FROM 
    Pedido INNER JOIN Transportadora
ON 
    Pedido.CodigoTransportadora = Transportadora.Codigo;

-- 5. Exibir o nome do funcionário, o número do pedido e o nome da empresa de todos
-- os pedidos realizados.

SELECT 
    Funcionario.Nome AS 'Nome do Funcionário',
    Pedido.Numero AS 'Número do Pedido',
    Cliente.NomeEmpresa AS 'Nome da Empresa'
FROM 
    Funcionario INNER JOIN Pedido ON Funcionario.Codigo = Pedido.CodigoFuncionario
    INNER JOIN Cliente ON Pedido.CodigoCliente = Cliente.Codigo;

-- 6. Exibir o nome do Produto, o nome da Categoria e o nome da Empresa (Fornecedor)
-- de todo os produtos.

SELECT 
    Produto.Nome AS 'Nome do Produto',
    Categoria.Nome AS 'Nome da Categoria',
    Fornecedor.NomeEmpresa AS 'Nome da Empresa'
FROM 
    Produto INNER JOIN Categoria ON Produto.CodigoCategoria = Categoria.Codigo
    INNER JOIN Fornecedor ON Produto.CodigoFornecedor = Fornecedor.Codigo;

-- 7. Exibir o nome do Produto, o Preço Unitário, a quantidade, o Número do Pedido e o
-- nome da Empresa que fez o transporte.

SELECT 
    Produto.Nome AS 'Nome do Produto',
    Produto.PrecoUnitario AS 'Preço Unitário',
    DetalhesPedido.Quantidade AS 'Quantidade',
    Pedido.Numero AS 'Número do Pedido',
    Transportadora.NomeEmpresa AS 'Nome da Empresa de Transporte'
FROM 
    Produto INNER JOIN DetalhesPedido ON Produto.Codigo = DetalhesPedido.CodigoProduto
    INNER JOIN Pedido ON DetalhesPedido.NumeroPedido = Pedido.Numero
    INNER JOIN Transportadora ON Pedido.CodigoTransportadora = Transportadora.Codigo;

-- 8. Exibir o nome do Produto, Data do Pedido e o nome da Empresa (Cliente) que fez
-- o pedido.

SELECT 
    Produto.Nome AS 'Nome do Produto',
    Pedido.DataPedido AS 'Data do Pedido',
    Cliente.NomeEmpresa AS 'Nome da Empresa'
FROM 
    Produto INNER JOIN DetalhesPedido ON Produto.Codigo = DetalhesPedido.CodigoProduto
    INNER JOIN Pedido ON DetalhesPedido.NumeroPedido = Pedido.Numero
    INNER JOIN Cliente ON Pedido.CodigoCliente = Cliente.Codigo;

-- 9. Exibir o nome da Empresa (Fornecedor), o nome do Produto, Preço Unitário (do
-- Produto), a Data do Pedido e o nome do Cliente que fez o pedido.

SELECT 
    Fornecedor.NomeEmpresa AS 'Nome da Empresa',
    Produto.Nome AS 'Nome do Produto',
    Produto.PrecoUnitario AS 'Preço Unitário',
    Pedido.DataPedido AS 'Data do Pedido',
    Cliente.NomeEmpresa AS 'Nome do Cliente'
FROM 
    Fornecedor INNER JOIN Produto ON Fornecedor.Codigo = Produto.CodigoFornecedor
    INNER JOIN DetalhesPedido ON Produto.Codigo = DetalhesPedido.CodigoProduto
    INNER JOIN Pedido ON DetalhesPedido.NumeroPedido = Pedido.Numero
    INNER JOIN Cliente ON Pedido.CodigoCliente = Cliente.Codigo;

-- 10. Exibir o nome do funcionário e o nome da Empresa que solicitou o pedido (Cliente).

SELECT 
    Funcionario.Nome AS 'Nome do Funcionário',
    Cliente.NomeEmpresa AS 'Nome da Empresa'
FROM 
    Funcionario INNER JOIN Pedido ON Funcionario.Codigo = Pedido.CodigoFuncionario
    INNER JOIN Cliente ON Pedido.CodigoCliente = Cliente.Codigo;

-- 11. Exibir o nome da Categoria, o nome do Produto, o Preço Unitário (de Venda),
-- Quantidade e o Desconto de todo os produtos comercializados.

SELECT
    Categorias.Nome AS Categoria,
    Produtos.Nome AS Produto,
    Produtos.PrecoUnitario AS Preco_Unitario,
    Produtos.Quantidade AS Quantidade,
    Produtos.Desconto AS Desconto
FROM
    Produtos
INNER JOIN
    Categorias ON Produtos.ID_Categoria = Categorias.ID;


-- 12. Exibir o Número do Pedido, a Data do Pedido, o nome da Empresa (Cliente) e o
-- nome da Empresa (Transportadora) que efetuou o transporte.

SELECT
    Pedidos.NumeroPedido AS Numero_do_Pedido,
    Pedidos.DataPedido AS Data_do_Pedido,
    Clientes.Nome AS Nome_do_Cliente,
    Transportadoras.Nome AS Nome_da_Transportadora
FROM
    Pedidos
INNER JOIN
    Clientes ON Pedidos.ID_Cliente = Clientes.ID
INNER JOIN
    Transportadoras ON Pedidos.ID_Transportadora = Transportadoras.ID;


-- 13. Exibir o Código do Produto, o nome do Produto, o Código do Fornecedor e o nome
-- da Empresa (Fornecedor) de todos os produtos.

SELECT
    Produtos.CodigoProduto AS Codigo_do_Produto,
    Produtos.NomeProduto AS Nome_do_Produto,
    Produtos.ID_Fornecedor AS Codigo_do_Fornecedor,
    Fornecedores.NomeFornecedor AS Nome_da_Empresa_do_Fornecedor
FROM
    Produtos
INNER JOIN
    Fornecedores ON Produtos.ID_Fornecedor = Fornecedores.CodigoFornecedor;


-- 14. Exibir o nome do funcionário, o Número do Pedido e o nome da empresa que fez o
-- transporte.

SELECT
    Funcionarios.NomeFuncionario AS Nome_do_Funcionario,
    Pedidos.NumeroPedido AS Numero_do_Pedido,
    Transportadoras.NomeTransportadora AS Nome_da_Empresa_de_Transporte
FROM
    Pedidos
INNER JOIN
    Funcionarios ON Pedidos.ID_Funcionario = Funcionarios.ID_Funcionario
INNER JOIN
    Transportadoras ON Pedidos.ID_Transportadora = Transportadoras.ID_Transportadora;


-- 15. Exibir o nome dos produtos já comercializados pela empresa.

SELECT NomeProduto
FROM Produtos;


-- 16. Exibir um relatório com o nome do funcionário o valor total de pedidos feitos pelo
-- mesmo e duas colunas com as comissões de 5% e 10%.

SELECT
    Funcionarios.NomeFuncionario AS Nome_do_Funcionario,
    SUM(Pedidos.ValorTotal) AS Valor_Total_dos_Pedidos,
    SUM(Pedidos.ValorTotal * 0.05) AS Comissao_5_Porcento,
    SUM(Pedidos.ValorTotal * 0.10) AS Comissao_10_Porcento
FROM
    Funcionarios
INNER JOIN
    Pedidos ON Funcionarios.ID_Funcionario = Pedidos.ID_Funcionario
GROUP BY
    Funcionarios.NomeFuncionario;


-- 17. Exibir um relatório com o nome da categoria e a quantidade de mercadorias
-- vendidas por categoria.

SELECT
    Categorias.Nome AS Nome_da_Categoria,
    COUNT(*) AS Quantidade_de_Mercadorias_Vendidas
FROM
    Categorias
LEFT JOIN
    Produtos ON Categorias.ID_Categoria = Produtos.ID_Categoria
LEFT JOIN
    Vendas ON Produtos.ID_Produto = Vendas.ID_Produto
GROUP BY
    Categorias.Nome;


-- 18. Exibir o nome de todas as transportadoras com uma coluna de total de fretes pagos
-- para essa transportadora e uma outra com o número de pedidos atendido pela
-- mesma.

SELECT
    Transportadoras.NomeTransportadora AS Nome_da_Transportadora,
    SUM(Fretes.ValorFrete) AS Total_de_Fretes_Pagos,
    COUNT(DISTINCT Pedidos.NumeroPedido) AS Numero_de_Pedidos_Atendidos
FROM
    Transportadoras
LEFT JOIN
    Fretes ON Transportadoras.ID_Transportadora = Fretes.ID_Transportadora
LEFT JOIN
    Pedidos ON Transportadoras.ID_Transportadora = Pedidos.ID_Transportadora
GROUP BY
    Transportadoras.NomeTransportadora;


-- 19. Exibir um relatório com o nome do cliente e o valor dos descontos dados a ele.

SELECT
    Clientes.Nome AS Nome_do_Cliente,
    SUM(Pedidos.ValorDesconto) AS Valor_Total_de_Descontos
FROM
    Clientes
LEFT JOIN
    Pedidos ON Clientes.ID_Cliente = Pedidos.ID_Cliente
GROUP BY
    Clientes.Nome;


-- 20. Exibir um relatório com o nome do funcionário e o total de desconto dado por ele.

SELECT
    Funcionarios.NomeFuncionario AS Nome_do_Funcionario,
    SUM(Pedidos.ValorDesconto) AS Total_de_Descontos_Dados
FROM
    Funcionarios
LEFT JOIN
    Pedidos ON Funcionarios.ID_Funcionario = Pedidos.ID_Funcionario
GROUP BY
    Funcionarios.NomeFuncionario;