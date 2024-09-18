/*1- Crie um banco de dados utilizando a linguagem SQL*/
CREATE DATABASE sistemapetshop;

/*2- Criando tabela Cliente no banco de dados*/
CREATE TABLE cliente (
    cpf VARCHAR(15) primary key,
    nomecliente VARCHAR(200) NOT NULL,
     telefone VARCHAR(30) NOT NULL
);

/*Criando tabela Veterinário no banco de dados*/
CREATE TABLE veterinario(
    crmv VARCHAR(20) primary key,
    nomevet VARCHAR(200) NOT NULL,
    salario DECIMAL (5,2) NOT NULL,
    dataadmissao DATE NOT NULL
);

/*Criando tabela Consulta no banco de dados*/
CREATE TABLE consulta(
    diaconsulta DATE NOT NULL,
    motivo VARCHAR (200) NOT NULL,
    horario TIME NOT NULL
);
/*Criando tabela Animal no banco de dados*/
CREATE TABLE animal(
    codanimal INT(10) primary key,
    nomeanimal VARCHAR(100) NOT NULL,
    raca VARCHAR(50) NOT NULL,
    anonascimento DATE NOT NULL
);


/* 3-Realize a alteração do atributo da tabela cliente de nomecliente para nomecompleto */
ALTER TABLE cliente
CHANGE COLUMN nomecliente nomecompleto CHAR(50);

/*4-Realize a alteração do datatype motivo de (200) caracteres para (500) caracteres*/
ALTER TABLE consulta
MODIFY COLUMN motivo VARCHAR(500) NOT NULL;

/*5- Delete o atributo nomeanimal da tabela animal*/
ALTER TABLE animal
DROP COLUMN nomeanimal;

/*Adicione novamente o atributo com o nome: nomeanimalzinho*/
ALTER TABLE animal
ADD nomeanimalzinho VARCHAR(50) NOT NULL;

/* 6-insira os dados "Ana Claudia Cunha" para nome da cliente, telefone 11999998888, e cpf 1144444411 na tabela do cliente*/
INSERT INTO cliente (nomecompleto, telefone, cpf)
VALUES ('Ana Claudia Cunha', "(11)9999-8888", 1144444411);

/* 7-Por fim, realize a exclusão dos dados da tabela cliente*/
DELETE FROM cliente WHERE cpf=1144444411;
DELETE FROM cliente;/*TODOS OS DADOS*/




/* 8-Realize a exclusão de cada uma das tabelas*/
DROP TABLE cliente, veterinario, consulta, animal;



/* 9-Realize a exclusão do banco de dados (Capture a tela do XAMPP)*/
DROP DATABASE sistemapetshop;
