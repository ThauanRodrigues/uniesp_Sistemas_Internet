1. Select d.CodigoDoProduto, Desconto From Produtos p JOIN Detalhes_do_Pedido d 
ON p.CodigoDoProduto = d.CodigoDoProduto

2. Select Distinct CodigoDoProduto From Detalhes_do_Pedido


3. Select Distinct CodigoDoCliente From Clientes


4. Select NomeDoContato, Endereco, 'Cliente Preferencial' AS ClientePreferencial  From Clientes


5. Select Top 25 PERCENT * From Produtos 


6. Select Top 50 PERCENT * From Funcionarios


7. Select Top 10 PERCENT * From Pedidos


8. Select Top 17 PERCENT * From Fornecedores


9. Select Top 85 PERCENT * From Categorias


10. Select DISTINCT Cidade From Funcionarios


11. Select DISTINCT Regiao From Funcionarios


12. Select DISTINCT Pais From Fornecedores


13. Select DISTINCT CodigoDoCliente From Pedidos


14. Select DISTINCT CodigoDoProduto From Produtos


15. SELECT CodigoDoProduto, NomeDoProduto, PrecoUnitario, PrecoUnitario * 1.07 AS PrecoComAcrescimo
FROM Produtos;


16. Select NumeroDoPedido, PrecoUnitário, Desconto, (PrecoUnitário - Desconto) AS ' Preco Final' 
From Detalhes_do_Pedido


17. Select NumeroDoPedido, (PrecoUnitário * Quantidade) AS 'Preço Total', 
((PrecoUnitário * Quantidade)- Desconto) AS 'Preço Final'
From Detalhes_do_Pedido


18. Select PrecoUnitario, 
PrecoUnitario * 1.25 AS 'Preço com Acrescimo de 25%',
PrecoUnitario * 1.35 AS 'Preço com Acrescimo de 35%',
PrecoUnitario * 1.45 AS 'Preço com Acrescimo de 45%'
From Produtos


19. Select NumeroDoPedido, Frete, 
Frete * 1.05 AS '+ Acrecismo de 5% Frete',
Frete * 1.10 AS '+ Acrecismo de 10% Frete'
From Pedidos


20. Select CodigoDoProduto, NomeDoProduto, 
NivelDeReposicao * 1.05 AS 'Nivel de Reposição + 5%' 
From Produtos


21. Select CodigoDoProduto, (PrecoUnitario * UnidadesEmEstoque) AS 'Total em Estoque'
From Produtos


22. Select NumeroDoPedido, CodigoDoProduto, PrecoUnitário, Quantidade,
((PrecoUnitário * Quantidade) * 1.20) AS 'Cheque p/ 30 dias',
((PrecoUnitário * Quantidade) * 1.30) AS 'Cheque p/ 60 dias',
((PrecoUnitário * Quantidade) * 0.85) AS 'A vista'
From Detalhes_do_Pedido


23. Select CodigoDoProduto, NomeDoProduto, NivelDeReposicao,
NivelDeReposicao * 1.05 AS 'Nivel de Reposição + acrescimo de 5%'
From Produtos


24.  Select NumeroDoPedido, CodigoDoCliente AS 'Clientes',
CodigoDoFuncionario, (Frete * 0.93) AS 'Frete c/ desconto'
From Pedidos


25. Select Nome, Sobrenome 
From Funcionarios
ORDER BY Nome desc


26. Select CodigoDoProduto, NomeDoProduto,PrecoUnitario
From Produtos
ORDER BY NomeDoProduto


27. Select CodigoDoProduto AS 'Cód.', 
NomeDoProduto AS 'Produtos', 
PrecoUnitario AS 'P. Unitário'
From Produtos
ORDER BY CodigoDoProduto


28.Select Pais, Regiao, CodigoDoFornecedor, NomeDaEmpresa, 
NomeDoContato
From Fornecedores
ORDER BY Pais, Regiao desc, NomeDaEmpresa


29. Select CodigoDoFuncionario, Sobrenome, Nome 
From Funcionarios	
ORDER BY Pais