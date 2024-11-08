CREATE DATABASE FORMATIVA;
USE FORMATIVA;

select * from AERONOVE;
select * from PASSAGEIRO;

CREATE TABLE AERONAVE(
id_nave INT auto_increment primary key not null,
nome varchar (50) not null,
destino varchar(50 ) not null,
comunicacao varchar(50) not null
);
select * from AERONAVE;

CREATE TABLE PASSAGEIRO(
id_pass INT auto_increment primary key not null,
id_nave int,
nome varchar (50) not null,
endereco varchar (50) not null,
telefone varchar (50) not null,
foreign key (id_nave) references aeronave(id_nave)
);

insert into AERONAVE (nome,destino,comunicacao)
values ("Space X", "Marte","radio"),
("JGT", "Canada","satelite"),
("META", "uruguai","instragram"),
("NASA", "buraco negro","omitido"),
("123milhas", "hawai","telefone");


insert into PASSAGEIRO (id_nave, nome,endereco, telefone)
values (1,"Rudrian almeida domingues", "Vila bart","15 99602-6913"),
(5,"Julio Cesar da Silva Moraes", "Lago dos Ipês","15 99943-2801"),
(4,"Caio Fernando Faria do Amaral", "uruguai","15 99856-5947"),
(1,"Nicolle Albuquerque", "Casa","16 99943-2801"),
(3,"Guilherme Bueno Martis de Queiroz", "itapetininga","16 99856-5947"),
(3,"Carlos Eduardado Bernades dos Santos", "morador de rua","16 99602-6913"),
(2,"Guilherme Vieira Bicudo de Almeida", "Canada","15 99667-8524"),
(2,"Newton André Thomaz", "SENAI","Sem Telefone"),
(4,"Isabely Vitoria de Souza Villar", "Centro","omitido"),
(5,"Fellipe Oliveira Raszejas", "shopping"," #####-####");

select * from AERONAVE;
select * from PASSAGEIRO;

#ALTERA O NOME DO PASSAGEIRO COM ID_PASS IGUAL A 14 PARA ALBERTO ROBERTO
UPDATE PASSAGEIRO
SET NOME = "ALBERTO ROBERTO"
WHERE ID_PASS= 14;

drop table PASSAGEIRO;
drop table AERONAVE;


#APAGAR O PASSAGEIRO COM ID_PASS IGUAL A 10
DELETE FROM PASSAGEIRO
WHERE ID_PASS = 10;

CREATE VIEW VW_PASSAGEIROS_VOANDO AS
select 
	passageiro.nome as nome_passageiro,
    aeronave.nome as Nome_Aeronave,
	aeronave.destino as destino_aeronave
from
	passageiro
inner join
	aeronave on passageiro.id_nave = aeronave.id_nave;
    
SELECT * FROM VW_PASSAGEIROS_VOANDO;