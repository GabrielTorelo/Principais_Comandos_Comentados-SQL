show databases; /* Visualiza os bancos de dados existentes */

select * from bd1sql_ex1.cliente; /* Seleciona o banco bd1sql_ex1 e dentro do banco a tabela cliente */

use bd1sql_ex1; /* Especifica o banco a ser utilizado */

describe cliente; /* Mostra a estrutura de cliente */

/* Cria a coluna Cliente_email no banco */
ALTER TABLE cliente ADD COLUMN cliente_email VARCHAR(50) NOT NULL;

/* Inseri um novo cliente no banco */
INSERT INTO cliente(cliente_nome, cliente_email, cliente_end, cliente_end_cidade, estado_codigo, cliente_end_cep, cliente_telefone, cliente_per_desconto)
VALUES('Gabriel', 'Gabriel.2000@alunos.utfpr.edu.br', 'Av: Santos Dumont', 'Cornélio Procópio', '16', '86300-000', '1111-1111', 25);

/* Inseri um novo cliente no banco */
INSERT INTO cliente(cliente_nome, cliente_email, cliente_end, cliente_end_cidade, estado_codigo, cliente_end_cep, cliente_telefone, cliente_per_desconto)
VALUES('Marcos', 'Marcos.Dioni@alunos.utfpr.edu.br', 'Av: Agostinho Ducci', 'Cornélio Procópio', '16', '86300-000', '2222-2222', 10);

/* Inseri um novo cliente no banco */
INSERT INTO cliente(cliente_nome, cliente_email, cliente_end, cliente_end_cidade, estado_codigo, cliente_end_cep, cliente_telefone, cliente_per_desconto)
VALUES('Eliane', 'Eliane.Martins@alunos.utfpr.edu.br', 'Av: Alberto Carazzai', 'Cornélio Procópio', '16', '86300-000', '3333-3333', 5);

/* Inseri um novo cliente no banco */
INSERT INTO cliente(cliente_nome, cliente_email, cliente_end, cliente_end_cidade, estado_codigo, cliente_end_cep, cliente_telefone, cliente_per_desconto)
VALUES('Cauan', 'Cauan.Gabriel@alunos.utfpr.edu.br', 'Av: Alipio Ferreira de Castro', 'Cornélio Procópio', '16', '86300-000', '4444-4444', 2);

/* Inseri um novo cliente no banco */
INSERT INTO cliente(cliente_nome, cliente_email, cliente_end, cliente_end_cidade, estado_codigo, cliente_end_cep, cliente_telefone, cliente_per_desconto)
VALUES('Clovis', 'Clovis.Denis@alunos.utfpr.edu.br', 'Av: Antônio Silveira Brasil', 'Cornélio Procópio', '16', '86300-000', '5555-5555', 30);

/* Inseri um novo cliente no banco */
INSERT INTO cliente(cliente_nome, cliente_email, cliente_end, cliente_end_cidade, estado_codigo, cliente_end_cep, cliente_telefone, cliente_per_desconto)
VALUES('Breno', 'Breno.Lucas@alunos.utfpr.edu.br', 'Av: Barão do Rio Branco', 'Cornélio Procópio', '16', '86300-000', '6666-6666', 50);

/* Inseri um novo cliente no banco */
INSERT INTO cliente(cliente_nome, cliente_email, cliente_end, cliente_end_cidade, estado_codigo, cliente_end_cep, cliente_telefone, cliente_per_desconto)
VALUES('Willian', 'Willian.Bernades@alunos.utfpr.edu.br', 'Av: Bento Ferraz de Campos', 'Cornélio Procópio', '16', '86300-000', '7777-7777', 0);

/* Inseri um novo cliente no banco */
INSERT INTO cliente(cliente_nome, cliente_email, cliente_end, cliente_end_cidade, estado_codigo, cliente_end_cep, cliente_telefone, cliente_per_desconto)
VALUES('Felipe', 'Felipe.Souza@alunos.utfpr.edu.br', 'Av: Dom Pedro I', 'Cornélio Procópio', '16', 'Dom Pedro I86300-000', '8888-8888', 15);

/* Inseri um novo cliente no banco */
INSERT INTO cliente(cliente_nome, cliente_email, cliente_end, cliente_end_cidade, estado_codigo, cliente_end_cep, cliente_telefone, cliente_per_desconto)
VALUES('Luciano', 'Lrnascimento@utfpr.edu.br', 'Av: Dom Pedro II', 'Cornélio Procópio', '16', '86300-000', '9999-9999', 15);

/* Inseri um novo cliente no banco */
INSERT INTO cliente(cliente_nome, cliente_email, cliente_end, cliente_end_cidade, estado_codigo, cliente_end_cep, cliente_telefone, cliente_per_desconto)
VALUES('Eduarda', 'eduardaalmeida@utfpr.edu.br', 'Av: Doutor Francisco Lacerda', 'Cornélio Procópio', '16', '86300-000', '0000-0000', 35);

/* Desativar o AutoCommit */
set session autocommit = 0;
set autocommit = 0;

/* Verificar a configuração do AutoCommit  */
select @@autocommit;

/* Atualiza o CEP do cliente com id = 1 */
UPDATE cliente SET cliente_nome= 'Luciano Nascimento', cliente_telefone= '9999-9999', cliente_end_cep= '86300-001'
WHERE cliente_id = 1;
commit; /* Salva os dados no banco */

/* Deleta o cliente com id = 1 */
DELETE FROM cliente WHERE cliente_id = 1;
commit; /* Salva os dados no banco */

/* Seleciona colunas expecificas da tabela cliente */
SELECT cliente_nome, cliente_email FROM bd1sql_ex1.cliente;

/* Seleciona colunas expecificas da tabela cliente com o id = 1 */
SELECT cliente_id, cliente_nome, cliente_email
FROM bd1sql_ex1.cliente
WHERE cliente_id = 1;

/* Seleciona colunas expecificas da tabela cliente com o id diferente de 1 */
SELECT cliente_id, cliente_nome, cliente_email
FROM bd1sql_ex1.cliente
WHERE cliente_id <> 1; /* Pesquisa id's diferentes de 1 */
/* WHERE cliente_id < 1;  Pesquisa id's menores que 1 */
/* WHERE cliente_id > 1;  Pesquisa id's maiores que 1 */
/* WHERE cliente_id >= 1;  Pesquisa id's maior ou igual que 1 */
/* WHERE cliente_id >= 1;  Pesquisa id's menor ou iguaal que 1 */

/* Inseri o cliente Willian 2 ao banco */
INSERT INTO cliente(cliente_id, cliente_nome, cliente_end, cliente_end_cidade, estado_codigo, cliente_end_cep, cliente_telefone, cliente_per_desconto, cliente_email) 
VALUES (NULL, 'Willian 2', 'Av: Bento Ferraz de Campos', 'Cornélio Procópio', '16', '86300-000', '7777-7777', '0', 'Willian.Bernades@alunos.utfpr.edu.br');

/* Seleciona apenas na coluna cliente_email as linhas não repetidas na tabela cliente */
SELECT DISTINCT cliente_email FROM bd1sql_ex1.cliente;

/* Seleciona apenas na coluna cliente_email todos as linha na tabela cliente */
SELECT ALL cliente_email FROM bd1sql_ex1.cliente;

/* Seleciona a coluna cliente_per_desconto na tabela cliente e organiza por ordem decrescente */
SELECT cliente_per_desconto FROM bd1sql_ex1.cliente
ORDER BY cliente_per_desconto DESC;

/* Seleciona a coluna cliente_per_desconto na tabela cliente e organiza por ordem crescente */
SELECT cliente_per_desconto FROM bd1sql_ex1.cliente
ORDER BY cliente_per_desconto ASC;

/* Busca os dados com a inicial 'E' */
SELECT cliente_nome FROM bd1sql_ex1.cliente
WHERE cliente_nome LIKE 'E%';

/* Busca os dados com a segunda letra 'E', ou seja, _e, __e, _e_ é utilizado para desconsiderar os campos com _ na consulta */
SELECT cliente_nome FROM bd1sql_ex1.cliente
WHERE cliente_nome LIKE '_A_%';

/* Busca os dados com a ultima letra sendo O */
SELECT cliente_nome FROM bd1sql_ex1.cliente
WHERE cliente_nome LIKE '%O';

/* Elimina os dados sem necessitar do commit */
TRUNCATE TABLE cliente;

/* Seleciona a esquerda os 3 primeiros caracteres dos dados da coluna cliente_nome da tabela cliente  */
SELECT LEFT(cliente_nome,3) From bd1sql_ex1.cliente;

/* Seleciona a direita os 5 primeiros caracteres dos dados da coluna cliente_nome da tabela cliente  */
SELECT RIGHT(cliente_nome,5) From bd1sql_ex1.cliente;
