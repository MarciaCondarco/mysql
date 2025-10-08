create database db_rh;
 use db_rh;
 
create table tb_colaboradores(
    id bigint auto_increment,
    NOME varchar(100) NOT NULL,
    TELEFONE VARCHAR(100),
    EMAIL VARCHAR(100),
	DEPARTAMENTO VARCHAR(100),
    CARGO varchar(100),
    SALARIO DECIMAL(6,2),
	PRIMARY KEY(id)
    );
    
    select * from tb_colaboradores;
    
    INSERT INTO tb_colaboradores(NOME, TELEFONE,EMAIL,DEPARTAMENTO,CARGO,SALARIO)
    VALUES("julia", "(19)9874145563", "julia@gmail.com", "finança","analista fiscal", 2.500);
    
     INSERT INTO tb_colaboradores(NOME, TELEFONE,EMAIL,DEPARTAMENTO,CARGO,SALARIO)
    VALUES("josé", "(19)48456523", "jose@gmail.com", "TI","suporte", 2.300);
    
     INSERT INTO tb_colaboradores(NOME, TELEFONE,EMAIL,DEPARTAMENTO,CARGO,SALARIO)
    VALUES("ana", "(19)15654145", "ana@gmail.com", "administração","analista administrativa", 3.000);
    
     INSERT INTO tb_colaboradores(NOME, TELEFONE,EMAIL,DEPARTAMENTO,CARGO,SALARIO)
    VALUES("willian", "(19)1565716131", "willian@gmail.com", "finança","contador ", 2.900);
    
     INSERT INTO tb_colaboradores(NOME, TELEFONE,EMAIL,DEPARTAMENTO,CARGO,SALARIO)
    VALUES("Ester", "(19)98744445563", "ester@gmail.com", "TI","desenvolvedora de software", 4.500);
    
    ALTER TABLE tb_colaboradores MODIFY TELEFONE VARCHAR(15);
    
    update tb_colaboradores set TELEFONE = "(19)157846978" where id = 1;
    update tb_colaboradores set TELEFONE = "(19)487654566" where id = 2;
    update tb_colaboradores set TELEFONE = "(19)654235846" where id = 3;
    update tb_colaboradores set TELEFONE = "(19)135458521" where id = 4;
    update tb_colaboradores set TELEFONE = "(19)984532445" where id = 5;
    
    create table departamento (
		id bigint auto_increment,
        setor varchar(100),
        primary key (id)
    );
select * from tb_colaboradores;
RENAME TABLE departamento TO tb_departamento;

INSERT INTO tb_departamento(setor)
VALUES("finança");
INSERT INTO tb_departamento(setor)
VALUES("TI");
INSERT INTO tb_departamento(setor)
VALUES("Administrativo");
INSERT INTO tb_departamento(setor)
VALUES("suporte");

select * from tb_colaboradores where salario >= 2.000;

select * from tb_colaboradores where salario <= 2.000;

ALTER TABLE tb_colaboradores 
MODIFY id_departamento BIGINT;

ALTER TABLE tb_colaboradores 
ADD CONSTRAINT fk_departamento
FOREIGN KEY (id_departamento)
REFERENCES tb_departamento(id);

select * from tb_colaboradores;

UPDATE tb_colaboradores SET id_departamento = 1 WHERE id = 1;
UPDATE tb_colaboradores SET id_departamento = 2 WHERE id = 2;
UPDATE tb_colaboradores SET id_departamento = 3 WHERE id = 3;
UPDATE tb_colaboradores SET id_departamento = 1 WHERE id = 4;
UPDATE tb_colaboradores SET id_departamento = 2 WHERE id = 5;

alter table tb_colaboradores drop DEPARTAMENTO;

