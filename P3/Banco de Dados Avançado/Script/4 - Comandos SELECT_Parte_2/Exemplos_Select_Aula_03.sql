-- Trabalhando com os operadores
SELECT	CodigoDoProduto, PrecoUnit�rio,
		PrecoUnit�rio*0.1 As Desconto,
		PrecoUnit�rio-(PrecoUnit�rio*0.1) as 'Valor com Desconto'
FROM Detalhes_do_Pedido
WHERE (PrecoUnit�rio*0.1)>=9

-- Ordenando meus dados
SELECT *
FROM Detalhes_do_Pedido
ORDER BY PrecoUnit�rio desc

-- Ordenando mais de um campo
Select *
From Funcionarios
Order by Tratamento, Nome, Sobrenome


-- Trabalhando com o operador Between
Select *
From Funcionarios
Where (CodigoDoFuncionario>=4) AND (CodigoDoFuncionario<=7)

Select *
From Funcionarios
Where CodigoDoFuncionario between 4 AND 7

-- Trabalhando com o operador IN
Select *
From Funcionarios
Where CodigoDoFuncionario IN (2,6,8)

Select * From Categorias

Select NomeDoProduto,CodigoDaCategoria
From Produtos
Where CodigoDaCategoria=8

select * from Fornecedores where Pais='Jap�o'

Select NomeDoProduto,CodigoDaCategoria
From Produtos
Where CodigoDoFornecedor in (4, 6)


-- Trabalhando com o operador Distinct
select distinct Pais, Cidade from Fornecedores order by Pais

select distinct Pais from Fornecedores

select * from Fornecedores

-- Trabalhando com o operador Null
select NomeDaEmpresa, Regiao from Fornecedores
Where Regiao is not Null

-- Trabalhando com os caracteres _ e %
select * from Clientes
where NomeDoContato like '% A%'

-- Trabalhando com fun��es de data
select Nome,year(DataDeNascimento) as AnoNasc from Funcionarios

select Nome,month(DataDeNascimento) as AnoNasc from Funcionarios

Select distinct year(DataDoPedido) from Pedidos

Select * from Pedidos Where year(DataDoPedido)=1997
Select * from Pedidos Where year(DataDoPedido)=1996
Select * from Pedidos Where year(DataDoPedido)=1998






