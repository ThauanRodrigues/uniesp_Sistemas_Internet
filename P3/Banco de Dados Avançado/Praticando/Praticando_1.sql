Select Nome, Sobrenome from Funcionarios

select * from Produtos
where PrecoUnitario BETWEEN 30 AND 33

select * from Produtos
where NomeDoProduto LIKE 'C_e%'

select NomeDoProduto AS Nome
from Produtos
Order by Nome 

Select CodigoDoCliente, NomeDaEmpresa, Endereco 
from Clientes

Select Sobrenome, Nome, DataDeNascimento, DataDeContratacao 
From Funcionarios

Select CodigoDaCategoria, NomeDaCategoria, Descricao From Categorias

Select NomeDaEmpresa, NomeDoContato, Telefone From Fornecedores

Select CodigoDoProduto, NomeDoProduto, PrecoUnitario From Produtos

Select * From Transportadoras

Select NomeDoContato, Endereco, 'Cliente preferencial' AS TipoDoCliente
From Clientes


Select NomeDoProduto, 'Produto existente' AS StatusDoProduto, NomeDoProduto 
From Produtos

Select Endereco, TelefoneResidencial, 'Pertece ao quadro'AS PerteceQuadro, Ramal,
'Ativo' AS Status From Funcionarios

Select NomeDaCategoria, Descricao, 'Definição' AS Definicao From Categorias

Select top 5 * From Pedidos

Select top 15 * From Funcionarios

Select top 3 NomeDaEmpresa From Fornecedores

Select top 20 * From Produtos

Select top 2 * From Categorias

Select Nome AS 'Funcionário', Cargo AS 'Função', Tratamento AS 'Título' From Funcionarios

Select NomeDaEmpresa AS 'Empresa', NomeDoContato AS 'Nome', CargoDoContato AS 'Cargo' 
From Fornecedores

Select Nome, TelefoneResidencial AS 'Fone', Observacoes AS 'Obs' From Funcionarios

Select NomeDaCategoria AS 'Categoria', Descricao AS 'Observação', 'Aprovado' AS Situação  
From Categorias

Select CodigoDoProduto, NomeDoProduto, PrecoUnitario, PrecoUnitario * 1.07 AS PrecoComAcrescimo 
From Produtos

Select Nome, Sobrenome From Funcionarios
ORDER BY Nome desc

Select CodigoDoProduto, NomeDoProduto, PrecoUnitario From Produtos
ORDER BY NomeDoProduto

Select CodigoDoProduto AS 'Cod', NomeDoProduto AS 'Produto', PrecoUnitario AS 'P. Unitario' 
From Produtos
ORDER BY CodigoDoProduto desc

Select Pais, Regiao, CodigoDoFornecedor, NomeDaEmpresa, NomeDoContato 
From Fornecedores
ORDER BY Pais , Regiao desc, NomeDaEmpresa 

Select CodigoDoFuncionario, Sobrenome, Nome 
From Funcionarios
ORDER BY Pais


