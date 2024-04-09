/* ************************************** */
/* Comandos de SQL em DML                 */
/* INSERT                                 */
/* UPDATE                                 */
/* DELETE                                 */
/* ************************************** */


/* ************************************** */
/* Inserindo registros na tabela Vendedor */
/* ************************************** */

INSERT INTO vendedor(nome) VALUES('Ana da Silva');
INSERT INTO vendedor(nome) VALUES('Maria Machado');
INSERT INTO vendedor(nome) VALUES('Carlos Eduardo');
INSERT INTO vendedor(nome) VALUES('Pedro dos Santos');

INSERT INTO cliente(nome,celular,email) VALUES('Lais Cristina','88050606','lais@gmail.com');
INSERT INTO cliente(nome,celular,email) VALUES('Jessica Cristina','88234506','jessica@gmail.com');
INSERT INTO cliente(nome,celular,email) VALUES('Valeska Cristina','88102006','valeska@gmail.com');
INSERT INTO cliente(nome,celular,email) VALUES('Tereza Cristina','88467706','tereza@gmail.com');
INSERT INTO cliente(nome,celular,email) VALUES('Luciano Castro','88121206','luciano@gmail.com');
INSERT INTO cliente(nome,celular,email) VALUES('Reinaldo Ferreira','88112006','reinaldo@gmail.com');

INSERT INTO produto(descricao,setor) VALUES('Pen Drive','Informatica');
INSERT INTO produto(descricao,setor) VALUES('Monitor','Informatica');
INSERT INTO produto(descricao,setor) VALUES('Geladeira','Eletrodomestico');
INSERT INTO produto(descricao,setor) VALUES('Ferro de engomar','Eletrodomestico');
INSERT INTO produto(descricao,setor) VALUES('Cama','Moveis');

INSERT INTO Venda(Produto_idProduto,Vendedor_idVendedor, Cliente_idCliente, Quantidade, DataVenda, Turno) VALUES(1,2,2,10,'01/02/2016','tarde'),
 (1,2,2,10,'01/03/2016','manha'),
 (1,2,2,20,'01/02/2016','tarde'),
 (1,2,3,30,'01/02/2016','manha'),
 (1,2,3,40,'01/02/2016','tarde'),
 (1,2,3,50,'01/06/2016','manha'),
 (1,2,3,60,'01/02/2016','manha'),
 (1,2,4,70,'01/02/2016','tarde'),
 (2,2,4,10,'01/03/2016','manha'),
 (2,2,4,20,'01/08/2016','tarde'),
 (2,2,5,30,'01/02/2016','manha'),
 (2,1,5,40,'01/04/2016','tarde'),
 (2,1,5,50,'01/06/2016','manha'),
 (2,1,5,60,'01/02/2016','tarde'),
 (2,1,2,70,'01/07/2016','manha'),
 (3,1,2,80,'01/04/2016','manha'),
 (3,1,2,90,'01/02/2016','manha'),
 (3,1,1,10,'01/02/2016','manha'),
 (3,1,1,20,'01/09/2016','tarde'),
 (3,1,1,30,'01/02/2016','manha'),
 (3,2,1,40,'01/03/2016','manha'),
 (3,2,2,50,'01/04/2016','manha'),
 (3,2,2,60,'01/05/2016','manha'),
 (3,2,3,70,'01/06/2016','manha'),
 (4,2,3,80,'01/07/2016','manha'), 
 (4,2,4,10,'01/08/2016','manha'),
 (4,2,4,10,'01/09/2016','manha'),
 (4,2,5,10,'01/10/2016','manha'),
 (4,2,5,10,'01/11/2016','manha'),
 (4,2,5,10,'01/05/2016','manha'),
 (5,2,3,20,'01/02/2016','noite'),
 (5,3,4,30,'01/04/2016','manha'),
 (5,3,3,40,'01/02/2016','manha'),
 (5,3,2,50,'01/12/2016','manha'),
 (5,3,2,60,'01/03/2016','manha'),
 (5,3,1,70,'01/02/2016','manha'),
 (5,3,1,10,'01/02/2016','manha'),
 (5,3,1,10,'01/05/2016','noite'),
 (5,4,1,10,'01/02/2016','noite'),
 (5,4,1,10,'01/02/2016','noite'),
 (5,4,1,10,'01/05/2016','noite'),
 (2,4,2,30,'01/02/2016','noite'),
 (2,4,2,40,'01/03/2016','noite'),
 (2,4,4,50,'01/06/2016','noite'),
 (2,4,5,60,'01/02/2016','noite'),
 (3,4,5,70,'01/02/2016','noite'),
 (3,4,5,80,'01/03/2016','noite'),
 (3,4,1,10,'01/02/2016','noite'),
 (3,4,3,10,'01/07/2016','noite'),
 (4,4,3,20,'01/02/2016','noite'),
 (4,3,3,30,'01/02/2016','noite'),
 (4,3,2,40,'01/02/2016','noite'), 
 (4,3,2,50,'01/02/2016','manha'),
 (5,3,2,10,'01/08/2016','manha'),
 (5,3,2,10,'01/02/2016','noite');




/* ******************************************* */
/* Comando para visualizar registros na tabela */
/* ******************************************* */

SELECT * FROM vendedor
SELECT * FROM cliente
SELECT * FROM produto
SELECT * FROM venda

/* ********************************************* */
/* Comando para atualizar conteúdo do campo Nome */
/* diante de um condicional idvendedor           */
/* ********************************************* */

UPDATE vendedor SET nome='Ana da Silva' WHERE idvendedor=1;
UPDATE vendedor SET nome='Maria Machado' WHERE idvendedor=2;
UPDATE vendedor SET nome='Carlos Eduardo' WHERE idvendedor=3;
UPDATE vendedor SET nome='Pedro dos Santos' WHERE idvendedor=4;



/* ************************************************ */
/* Comando para apagar registros da tabela vendedor */
/* ************************************************ */

DELETE FROM vendedor
