create database db_escola;
use db_escola;

create table tb_estudante(
	id_aluno bigint auto_increment,
    nome varchar(100), 
    data_nascimento date, 
    telefone varchar (15), 
    serie varchar(6), 
    ensino varchar(20), 
    endereco varchar(100),
    primary key(id_aluno)
    );

select * from tb_estudante;

 insert into tb_estudante (nome, data_nascimento,telefone,serie,ensino,endereco)
 values("gustavo", "2010-12-12", "(19)548795468", "5º", "fundamental", "rua rosa salles");

insert into tb_estudante (nome, data_nascimento,telefone,serie,ensino,endereco)
 values("ana", "2010-02-10", "(19)456565548", "5º", "fundamental", "rua primavera");
 
 insert into tb_estudante (nome, data_nascimento,telefone,serie,ensino,endereco)
 values("jose", "2010-11-02", "(19)14685264", "5º", "fundamental", "rua vermelho");
 
 insert into tb_estudante (nome, data_nascimento,telefone,serie,ensino,endereco)
 values("gislaine", "2010-05-12", "(19)138452742", "5º", "fundamental", "rua tiradente");
 insert into tb_estudante (nome, data_nascimento,telefone,serie,ensino,endereco)
 values("marceline", "2010-04-22", "(19)173642845", "5º", "fundamental", "rua itangueira");
 insert into tb_estudante (nome, data_nascimento,telefone,serie,ensino,endereco)
 values("will", "2010-09-12", "(19)123872489", "5º", "fundamental", "rua salles");
 insert into tb_estudante (nome, data_nascimento,telefone,serie,ensino,endereco)
 values("gustavo", "2010-08-03", "(19)451987453", "5º", "fundamental", "rua tiradentes");
 
delete  from tb_estudante where id_aluno =4; 

update tb_estudante set nota=7 where id_aluno = 1;
update tb_estudante set nota=2 where id_aluno = 5;
update tb_estudante set nota=10 where id_aluno = 6;
update tb_estudante set nota=5 where id_aluno = 7;
update tb_estudante set nota=9 where id_aluno = 8;
update tb_estudante set nota=7 where id_aluno = 9;
update tb_estudante set nota=8 where id_aluno = 10;

select * from tb_estudante where nota>= 7;

select * from tb_estudante where nota<= 7;

