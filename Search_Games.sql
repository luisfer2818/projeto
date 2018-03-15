CREATE SCHEMA SEARCH_GAMES;
USE SEARCH_GAMES;

CREATE TABLE usuarios(
	`id` int(11) NOT NULL auto_increment primary key,
	`email` varchar(100) DEFAULT NULL,
	`senha` varchar(50) DEFAULT NULL);

CREATE TABLE cadastro(
	USUARIO_ID INT(11) NOT NULL auto_increment PRIMARY KEY,
    NOME VARCHAR(100) NOT NULL,
    EMAIL VARCHAR(100) DEFAULT NULL,
    SENHA VARCHAR(20) DEFAULT NULL,
    DATA_NASCIMENTO DATE,
    TELEFONE CHAR(12));

CREATE TABLE login(
	USUARIO_ID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	EMAIL VARCHAR(100) NOT NULL,
    SENHA VARCHAR(50) NOT NULL,
    NIVEIS_ACESSO_ID int(11) NOT NULL);

CREATE TABLE jogos(
	JOGOS_ID INT(11) auto_increment PRIMARY KEY,
	NOME VARCHAR(100),
	PLATAFORMA VARCHAR(20),
    LOJA VARCHAR(50),
    GENERO VARCHAR(50));
    
CREATE TABLE desconto(
    DESCONTO_ID INT(11) AUTO_INCREMENT PRIMARY KEY,
    CUPOM VARCHAR(30));
    
CREATE TABLE loja_parceira(
	CNPJ INT(30) AUTO_INCREMENT PRIMARY KEY,
    PROMOCOES VARCHAR(50),
    TELEFONE CHAR(9),
    PRODUTOS VARCHAR(50));
    
    
INSERT INTO cadastro (USUARIO_ID, NOME, EMAIL, SENHA, 
DATA_NASCIMENTO, TELEFONE) VALUES
(19, 'LUIS FERNANDO', 'LUIS@GMAIL.COM', 1234, 2000-10-01, 995721518);

INSERT INTO cadastro (USUARIO_ID, NOME, EMAIL, SENHA, 
DATA_NASCIMENTO, TELEFONE, IS_ADM) VALUES
(5, 'ADM', 'searchgames@admin.com', 'admin123', 2000-10-01, 99999999, 'false');

alter table cadastro add column is_adm boolean default false;

DROP TABLE cadastro;
    

SELECT * FROM USUARIOS;
select * from login;
select * from cadastro;