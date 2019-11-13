show databases; /* Visualiza os bancos de dados existentes */

select * from bd1sql_ex1.cliente; /* Seleciona o banco bd1sql_ex1 e dentro do banco a tabela cliente */

use bd1sql_ex1; /* Especifica o banco a ser utilizado */

/* Inserir um novo dado na tabela estado */
insert into estado(estado_codigo, estado_nome, estado_uf) /* Inserir na tabela estado nos respectivos campos */
values ('01', 'Paraná', 'PR'); /* Valores a serem inseridos nos campos */

select * from estado; /* Seleciona a tabela estado */

/* Inserir um dado novo na tabela cliente */
insert into cliente(cliente_nome, cliente_end, cliente_end_cidade, estado_codigo, cliente_end_cep, cliente_telefone, cliente_per_desconto) /* Inserir na tabela estado nos respectivos campos */
values('Luciano', 'Rua: XV de Novembro', 'Cornélio Procópio', '01', '8630000', '9999-9999', 2); /* Valores a serem inseridos nos campos */

select * from cliente;/* Seleciona a tabela cliente */

alter table cliente change cliente_end cliente_end varchar(80) not null; /* na tabela cliente altera cliente_end por cliete_end VARCHAR(80) not null */

alter table cliente modify cliente_end_cep varchar(10);/* Altera a tabela cliente e modifica o tipo de dado para VARCHAR e seu novo tamanho */

describe cliente; /* Mostra a estrutura de cliente */

update cliente set cliente_end_cep='86300-001' where cliente_id=1; /* Atualiza na tabela 'cliente' o campo cliente_end_cep do cliente com o id igual a 1 */ 
commit; /* Salvar a alteração no banco */
