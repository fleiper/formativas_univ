CREATE DATABASE UNIVERSIDADE_FORMS;
USE UNIVERSIDADE_FORMS;

select * from UNIVERSIDADE;
select * from ALUNO;

CREATE TABLE UNIVERSIDADE(
ID_UNI INT AUTO_INCREMENT PRIMARY KEY ,
NOME varchar (50),
TELEFONE varchar(50),
RUA varchar(50),
NUMERO INT,
CEP varchar(50),
BAIRRO varchar(50),
CIDADE varchar(50),
PAIS varchar(50)
);

CREATE TABLE ALUNO(
ID_ESTUDANTE INT AUTO_INCREMENT PRIMARY KEY ,
ID_UNI INT,
NOME varchar (50),
TELEFONE varchar(50),
RUA varchar(50),
NUMERO INT,
CEP varchar(50),
BAIRRO varchar(50),
CIDADE varchar(50),
PAIS varchar(50),
FOREIGN KEY (ID_UNI) REFERENCES UNIVERSIDADE (ID_UNI)
);

insert into UNIVERSIDADE (NOME,TELEFONE,RUA,NUMERO,CEP,BAIRRO,CIDADE,PAIS)
values ("USP", "3218-7598","Rua Francisco combicheck",333,"19000-100","Zona oeste","São Pualo","Brasil"),
("HARVARD", "7534-1598","Rua general dafossa",555,"18201-480","Alplhaville","Inglaterra","Inglaterra"),
("YALE", "7418-5296","Rua Richard Gilmore",777,"19000-110","Zona norte","São Pualo","Inglaterra"),
("SESI", "7531-9514","Rua Adriano Adauto",999,"18201-100","Zona sul","Itapetininga","Brasil"),
("UNICAMP", "3687-1549","Rua Sr.Raszejas",123,"20000-100","Zona leste","Campinas","Brasil");


insert into ALUNO (ID_UNI,NOME,TELEFONE,RUA,NUMERO,CEP,BAIRRO,CIDADE,PAIS)
values (1,"Rudrian almeida domingues", "6913-7598","Rua Adriano Adauto",987,"19000-100","Lago dos Ipês","Itapetininga","Brasil"),
(2,"Julio Cesar da Silva Moraes", "7598-6913","Rua patrick jane",654,"19000-100","Pinheiros","Itapetininga","Brasil"),
(3,"Caio Fernando Faria do Amaral", "7598-6913"," Rua Dexter morgan",321,"19000-100","Shopping","Itapetininga","Brasil"),
(4,"Nicolle Albuquerque","7598-6913","Rua Sebastião Maia",147,"19000-100","centro","Itapetininga","Brasil"),
(5,"Fellipe Oliveira Raszejas", "1498-6913","Rua freddy mercury",258,"19000-100","Bela vista","Itapetininga","Brasil");

#ALTERA O NOME DO PASSAGEIRO COM ID_PASS IGUAL A 14 PARA ALBERTO ROBERTO
UPDATE ALUNO
SET NOME = "ALBERTO ROBERTO"
WHERE ID_PASS= 4;

UPDATE UNIVERSIDADE
SET NOME = "NYU"
WHERE ID_PASS= 4;

drop table UNIVERSIDADE;
drop table ALUNO;

#APAGAR O PASSAGEIRO COM ID_PASS IGUAL A 10
DELETE FROM ALUNO
WHERE ID_PASS = 1;

CREATE VIEW ALUNOS_SESI_FACULDADES AS
select 
	aluno.nome as o,
    universidade.nome as faculdade,
	aluno.cidade as cidade_natal,
    universidade.cidade as cidade_atual
from
	aluno
inner join
	universidade on aluno.id_uni = universidade.id_uni;
    
SELECT * FROM ALUNOS_SESI_FACULDADES;