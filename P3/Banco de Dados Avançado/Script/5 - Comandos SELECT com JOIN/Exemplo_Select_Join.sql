-- Trabalhando com mais de uma tabela
select * from categorias

select c.CodigoDaCategoria,NomeDoProduto,NomeDaCategoria from Produtos p 
join Categorias c on p.CodigoDaCategoria=c.CodigoDaCategoria
where c.NomeDaCategoria='Laticínios'

-- Utilizando o operador JOIN com duas tabelas
select * from Produtos join Categorias on Produtos.CodigoDaCategoria = Categorias.CodigoDaCategoria

select * from Produtos p join Categorias c on p.CodigoDaCategoria = c.CodigoDaCategoria

-- Utilizando o operador JOIN com duas tabelas e um Where
select * from Produtos p join Categorias c on p.CodigoDaCategoria = c.CodigoDaCategoria
where p.CodigoDoFornecedor=1

-- Utilizando o operador JOIN com três tabelas
select * from Produtos p join Categorias c on p.CodigoDaCategoria = c.CodigoDaCategoria
join Fornecedores f on p.CodigoDoFornecedor=f.CodigoDoFornecedor
where Pais = 'Japão'

Select cidade, count(*) Total from Clientes group by cidade order by Total Desc

-- A relação com as duas tabelas
Select cidade, count(*)  Total from Pedidos p join Clientes c on p.CodigoDoCliente=c.CodigoDoCliente
group by cidade order by Total Desc

select * from Detalhes_do_Pedido

Select c.cidade, c.pais, count(*)  Num_Reg, sum(d.PrecoUnitário*d.Quantidade) Total from Pedidos p 
join Clientes c on p.CodigoDoCliente=c.CodigoDoCliente
Join Detalhes_do_Pedido d on p.NumeroDoPedido = d.NumeroDoPedido
group by cidade, c.pais order by Total Desc

Select distinct p.CodigoDoCliente, c.NomeDoContato from Pedidos p 
join Clientes c on p.CodigoDoCliente=c.CodigoDoCliente
Join Detalhes_do_Pedido d on p.NumeroDoPedido = d.NumeroDoPedido
where c.cidade = 'São Paulo'

select f.Nome, count(*) TotaldeVendas from Detalhes_do_Pedido d 
join Pedidos p on d.NumeroDoPedido=p.NumeroDoPedido
join Funcionarios f on p.CodigoDoFuncionario=f.CodigoDoFuncionario
group by f.Nome


select top 3 f.Nome, count(*)  Num_Reg, sum(d.PrecoUnitário*d.Quantidade) Total from Detalhes_do_Pedido d 
join Pedidos p on d.NumeroDoPedido=p.NumeroDoPedido
join Funcionarios f on p.CodigoDoFuncionario=f.CodigoDoFuncionario
group by f.Nome order by Total Desc


Select * from Clientes


-- Utilizando o operador JOIN com três tabelas e um Where
select * from Produtos p join Categorias c on p.CodigoDaCategoria = c.CodigoDaCategoria
join Fornecedores f on p.CodigoDoFornecedor=f.CodigoDoFornecedor where Pais='EUA'

-- Utilizando o operador JOIN com três tabelas e um Where composto
select * from Produtos p join Categorias c on p.CodigoDaCategoria = c.CodigoDaCategoria
join Fornecedores f on p.CodigoDoFornecedor=f.CodigoDoFornecedor where Pais='EUA' and NomeDaCategoria='Bebidas'

-- Utilizando o operador LEFT e RIGHT do JOIN
select * from Detalhes_do_Pedido

select * from Pedidos

select distinct CodigoDoCliente from Pedidos

select * from Pedidos p join Clientes c on p.CodigoDoCliente=c.CodigoDoCliente

select p.NumeroDoPedido,c.CodigoDoCliente from Pedidos p 
right join Clientes c on p.CodigoDoCliente=c.CodigoDoCliente
where p.NumeroDoPedido is null
