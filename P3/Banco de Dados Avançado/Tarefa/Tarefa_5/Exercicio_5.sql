-- 1. Exibir o Número do Pedido, o nome da Empresa, o Telefone e o Fax de todos os clientes que realizaram pedidos. --
Select NumeroDoPedido, NomeDaEmpresa, Telefone, Fax 
From Clientes c
Join Pedidos p ON c.CodigoDoCliente = p.CodigoDoCliente  


-- 2. Exibir o Código do Cliente, o nome da Empresa (Cliente), a Data de solicitação do pedido e o valor do frete pago. --
Select p.CodigoDoCliente, NomeDaEmpresa, DataDoPedido, Frete
From Pedidos p
Join Clientes c ON p.CodigoDoCliente = c.CodigoDoCliente

-- 3. Informar o Código do Funcionário, nome, Cargo, Código do Cliente e a Data do Pedido de todos os pedidos realizados. --
Select p.CodigoDoFuncionario, Nome, Cargo, CodigoDoCliente, DataDoPedido
From Pedidos p
Join Funcionarios f ON p.CodigoDoFuncionario = f.CodigoDoFuncionario


-- 4. Exibir o Número do Pedido, a Data do Pedido, a Data de Entrega e o nome da Empresa que fez o transporte. --
Select NumeroDoPedido, DataDoPedido, DataDeEntrega, NomeDaEmpresa
From Pedidos p
Join Transportadoras t ON p.CodigoDaTransportadora = t.CodigoDaTransportadora


-- 5. Exibir o nome do funcionário, o número do pedido e o nome da empresa de todos os pedidos realizados.  --
Select Nome, NumeroDoPedido, NomeDaEmpresa 
From Pedidos p
Join Funcionarios f ON p.CodigoDoFuncionario = f.CodigoDoFuncionario
Join Transportadoras t ON p.CodigoDaTransportadora = t.CodigoDaTransportadora

-- 6. Exibir o nome do Produto, o nome da Categoria e o nome da Empresa (Fornecedor) de todo os produtos. -- 
Select NomeDoProduto, NomeDaCategoria, NomeDaEmpresa
From Produtos p 
Join Fornecedores f ON p.CodigoDoFornecedor = f.CodigoDoFornecedor
Join Categorias c ON p.CodigoDaCategoria = c.CodigoDaCategoria


-- 7. Exibir o nome do Produto, o Preço Unitário, a quantidade, o Número do Pedido e o nome da Empresa que fez o transporte. --
Select NomeDoProduto, PrecoUnitario, Quantidade, NumeroDoPedido, NomeDaEmpresa 
From Produtos p
Join Detalhes_do_Pedido d ON p.CodigoDoProduto = d.CodigoDoProduto
Join Fornecedores f ON p.CodigoDoFornecedor = f.CodigoDoFornecedor


-- 8. Exibir o nome do Produto, Data do Pedido e o nome da Empresa (Cliente) que fez o pedido. --
Select NomeDoProduto, DataDoPedido, NomeDaEmpresa 
From Produtos pr
Join Detalhes_do_Pedido d ON pr.CodigoDoProduto = d.CodigoDoProduto
Join Pedidos p ON d.NumeroDoPedido = p.NumeroDoPedido
Join Clientes c ON p.CodigoDoCliente = c.CodigoDoCliente

-- 9. Exibir o nome da Empresa (Fornecedor), o nome do Produto, Preço Unitário (do Produto), a Data do Pedido e o nome do Cliente que fez o pedido. --
Select f.NomeDaEmpresa, NomeDoProduto, pr.PrecoUnitario, DataDoPedido, C.NomeDoContato
From Fornecedores f 
Join Produtos pr ON f.CodigoDoFornecedor = pr.CodigoDoFornecedor
Join Detalhes_do_Pedido dp ON pr.CodigoDoProduto = dp.CodigoDoProduto
Join Pedidos p ON dp.NumeroDoPedido = p.NumeroDoPedido
Join Clientes c ON p.CodigoDoCliente = c.CodigoDoCliente


-- 10. Exibir o nome do funcionário e o nome da Empresa que solicitou o pedido (Cliente).  --
Select f.Nome, C.NomeDaEmpresa 
From Funcionarios f
Join Pedidos p ON f.CodigoDoFuncionario = p.CodigoDoFuncionario
Join Clientes c ON p.CodigoDoCliente = c.CodigoDoCliente


-- 11. Exibir o nome da Categoria, o nome do Produto, o Preço Unitário (de Venda), Quantidade e o Desconto de todo os produtos comercializados.--
Select NomeDaCategoria, NomeDoProduto, d.PrecoUnitário, Quantidade, Desconto
From Produtos p
Join Categorias c ON p.CodigoDaCategoria= c.CodigoDaCategoria
Join Detalhes_do_Pedido d ON d.CodigoDoProduto = p.CodigoDoProduto


-- 12. Exibir o Número do Pedido, a Data do Pedido, o nome da Empresa (Cliente) e o nome da Empresa (Transportadora) que efetuou o transporte. --
Select NumeroDoPedido, DataDoPedido, c.NomeDaEmpresa, t.NomeDaEmpresa AS 'Nome da empresa Transportora'
From Pedidos p
Join Clientes c ON p.CodigoDoCliente = c.CodigoDoCliente
Join Transportadoras t ON p.CodigoDaTransportadora = t.CodigoDaTransportadora


-- 13. Exibir o Código do Produto, o nome do Produto, o Código do Fornecedor e o nome da Empresa (Fornecedor) de todos os produtos.  --
Select CodigoDoProduto, NomeDoProduto, f.CodigoDoFornecedor, f.NomeDaEmpresa
From Produtos p
Join Fornecedores f ON p.CodigoDoFornecedor = f.CodigoDoFornecedor


--14. Exibir o nome do funcionário, o Número do Pedido e o nome da empresa que fez o transporte. --
Select f.Nome, NumeroDoPedido, NomeDaEmpresa 
From Pedidos p
Join Funcionarios f ON p.CodigoDoFuncionario = f.CodigoDoFuncionario
Join Transportadoras t ON p.CodigoDaTransportadora = t.CodigoDaTransportadora


-- 15. Exibir o nome dos produtos já comercializados pela empresa. --
Select NomeDoProduto From Produtos

--16. Exibir um relatório com o nome do funcionário o valor total de pedidos feitos pelo mesmo e duas colunas com as comissões de 5% e 10%. --
Select F.Nome, 
(PrecoUnitário * Quantidade) AS ValorTotal,  
((PrecoUnitário * Quantidade)*0.05) AS 'Comissão 5%',
((PrecoUnitário * Quantidade)*0.10) AS 'Comissão 10%'
From Pedidos p
Join Funcionarios f ON p.CodigoDoFuncionario = f.CodigoDoFuncionario
Join Detalhes_do_Pedido d ON p.NumeroDoPedido = d.NumeroDoPedido


-- 17.  Exibir um relatório com o nome da categoria e a quantidade de mercadorias vendidas por categoria. --
Select c.NomeDaCategoria,
COUNT(*) AS 'Mercadorias vendidas por categorias'
From Categorias c
Join Produtos p ON c.CodigoDaCategoria = p.CodigoDaCategoria
GROUP BY NomeDaCategoria


-- 18. Exibir o nome de todas as transportadoras com uma coluna de total de fretes pagos para essa transportadora e uma outra com o número de pedidos atendido pela mesma. --
Select NomeDaEmpresa, Frete,
COUNT(*) Pedidos
From Transportadoras t
Join Pedidos p ON T.CodigoDaTransportadora = P.CodigoDaTransportadora
GROUP BY t.NomeDaEmpresa, Frete


-- 19. Exibir um relatório com o nome do cliente e o valor dos descontos dados a ele. --
Select NomeDoContato, Desconto
From Clientes c
Join Pedidos p ON c.CodigoDoCliente = p.CodigoDoCliente
Join Detalhes_do_Pedido d ON p.NumeroDoPedido = d.NumeroDoPedido


-- 20. Exibir um relatório com o nome do funcionário e o total de desconto dado por ele.--
Select Nome, Desconto
From Funcionarios f
Join Pedidos p ON f.CodigoDoFuncionario = p.CodigoDoFuncionario
Join Detalhes_do_Pedido d ON p.NumeroDoPedido = d.NumeroDoPedido