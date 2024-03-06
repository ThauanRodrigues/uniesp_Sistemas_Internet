1. Select CodigoDoCliente, NomeDaEmpresa, Endereco from Clientes

2. Select Sobrenome, Nome, DataDeNascimento, DataDeContratacao From Funcionarios

3. Select CodigoDaCategoria, NomeDaCategoria, Descricao From Categorias

4. Select NomeDaEmpresa, NomeDoContato, Telefone From Fornecedores

5. Select CodigoDoProduto, NomeDoProduto, PrecoUnitario From Produtos

6. Select * From Transportadoras

7. Select NomeDoContato, Endereco, 'Cliente preferencial' AS TipoDoCliente
From Clientes

8.Select NomeDoProduto, 'Produto existente' AS StatusDoProduto, NomeDoProduto From Produtos

9. Select Endereco, TelefoneResidencial, 'Pertece ao quadro'AS PerteceQuadro, Ramal,
'Ativo' AS Status From Funcionarios

10. Select NomeDaCategoria, Descricao, 'Definição' AS Definicao From Categorias

11. Select top 5 * From Pedidos

12. Select top 15 * From Funcionarios

13. Select top 3 NomeDaEmpresa From Fornecedores

14. Select top 20 * From Produtos

15. Select top 2 * From Categorias

16. Select Nome AS 'Funcionário', Cargo AS 'Função', Tratamento AS 'Título' From Funcionarios

17. Select NomeDaEmpresa AS 'Empresa', NomeDoContato AS 'Nome', CargoDoContato AS 'Cargo' 
From Fornecedores

18. Select Nome, TelefoneResidencial AS 'Fone', Observacoes AS 'Obs' From Funcionarios

19. Select NomeDaCategoria AS 'Categoria', Descricao AS 'Observação', 'Aprovado' AS Situação  
From Categorias

20. Select CodigoDoProduto, NomeDoProduto, PrecoUnitario, PrecoUnitario * 1.07 AS PrecoComAcrescimo 
From Produtos

21. Select Nome, Sobrenome From Funcionarios
ORDER BY Nome desc

22. Select CodigoDoProduto, NomeDoProduto, PrecoUnitario From Produtos
ORDER BY NomeDoProduto

23. Select CodigoDoProduto AS 'Cod', NomeDoProduto AS 'Produto', PrecoUnitario AS 'P. Unitario' 
From Produtos
ORDER BY CodigoDoProduto desc

24. Select Pais, Regiao, CodigoDoFornecedor, NomeDaEmpresa, NomeDoContato 
From Fornecedores
ORDER BY Pais , Regiao desc, NomeDaEmpresa 

25. Select CodigoDoFuncionario, Sobrenome, Nome 
From Funcionarios
ORDER BY Pais