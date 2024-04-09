--1. Qual o vendedor que mais fez registro de vendas? --
Select Nome, COUNT(*) AS Quantidade From Vendedor vd
Join Venda v ON vd.idVendedor = v.Vendedor_idVendedor
GROUP BY Nome
ORDER BY Quantidade DESC

--2. Qual o cliente com maior número de vendas?--
Select Nome, MAX(Quantidade) QuantidadeTotal From Cliente c
Join Venda v ON c.idCliente = v.Cliente_idCliente
GROUP BY Nome
ORDER BY QuantidadeTotal desc

-- 3. Qual a soma das quantidades por cliente? --
Select Nome, SUM(Quantidade) QuantidadeTotal From Cliente c
Join Venda v ON c.idCliente = v.Cliente_idCliente
GROUP BY Nome
ORDER BY QuantidadeTotal desc


--4.Qual a soma das quantidades por vendedor? --
Select Nome, SUM(Quantidade) QuantidadeTotal From Vendedor vn
Join Venda v ON vn.idVendedor = v.Vendedor_idVendedor
GROUP BY Nome
ORDER BY QuantidadeTotal desc


--5. Quais os produtos mais vendidos?--
Select Descricao ,COUNT(*) Quantidade From Produto p
Join Venda v ON p.idProduto = v.Produto_idProduto
GROUP BY Descricao
ORDER BY Quantidade desc


--6.Quais os produtos que nunca foram vendidos? --
Select Descricao From Produto p
Join Venda v ON p.idProduto = v.Produto_idProduto
Where Quantidade = 0


--7.Qual é o turno da tabela de Venda com maior número de vendas? --
Select Turno, MAX(Quantidade) Quantidade From Venda
GROUP BY Turno
ORDER BY Quantidade desc


--8. Qual é a soma das quantidades por turno? --
Select Turno, SUM(Quantidade) Quantidade From Venda
GROUP BY Turno
ORDER BY Quantidade desc


--9. Qual é a média de quantidades vendidas por clientes? -- 
Select c.Nome ,AVG(Quantidade) AS 'Média por quantidade' From Cliente c
Join Venda v ON c.idCliente = v.Cliente_idCliente
GROUP BY  Nome
ORDER BY 'Média por quantidade' desc



--10. Qual é a média de quantidades vendidas por vendedor?--
Select Nome ,AVG(Quantidade) AS 'Média por quantidade' From Vendedor vn
Join Venda v ON vn.idVendedor = v.Vendedor_idVendedor
GROUP BY  Nome
ORDER BY 'Média por quantidade' desc


--11. Mostre todos os clientes que não tem celular. --
Select Nome From Cliente
Where Celular IS NULL 


--12. Mostre quais os setores existem da tabela produto. --
Select Setor From Produto


-- 13. Quais os turnos já cadastrados na tabela Venda? --
Select distinct Turno From Venda


-- 14.Quais os clientes que apresentam em alguma parte do seu nome a palavra “Cristina”.--
Select Nome From Cliente
Where Nome Like '%Cristina%'


--15. Altere a tabela Venda adicionando uma constraint do tipo CHECK para que a quantidade só aceite valores positivos. --
ALTER TABLE Venda
ADD CONSTRAINT check_quantidade_positive CHECK (quantidade > 0);



 --16. Altere a tabela Venda adicionando uma constraint do tipo CHECK para que o turno só aceite valores entre: manha, noite e tarde. --
ALTER TABLE Venda
ADD CONSTRAINT check_turno_values CHECK (turno IN ('manha', 'tarde', 'noite'));

 -- 17. Quantas vendas foram realizadas nos primeiros dias (1, 2, 3, 4 e 5) do mês? --
 Select Count(*) AS Total_vendas
From venda
WHERE DataVenda BETWEEN '2024-03-01' AND '2024-03-05';


-- 18. Quantas vendas foram realizadas por dia? --
Select DataVenda ,COUNT(*) AS Total_vendas_por_Dia
From Venda
GROUP BY DataVenda




