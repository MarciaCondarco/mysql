CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
	id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    quantidade int,
    data_validade date,
    preco decimal NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome,quantidade,data_validade,preco)
VALUES("abacate", 10, "2025-10-27", 15.00);

select  * from tb_produtos; 

-- modificar a estrutura de um atributo
ALTER TABLE tb_produtos MODIFY preco decimal(6,2);

INSERT INTO tb_produtos(nome,quantidade,data_validade,preco)
VALUES("laranja", 50, "2025-10-27", 12.50);

INSERT INTO tb_produtos(nome,quantidade,data_validade,preco)
VALUES("banana", 200, "2025-10-17", 12.90);

INSERT INTO tb_produtos(nome,quantidade,data_validade,preco)
VALUES("morango", 70, "2025-10-11", 10.00);

update tb_produtos set preco=15.90 where id = 1;

delete from tb_produtos where id =3;

-- modifica e adicione 
ALTER TABLE tb_produtos ADD descricao varchar (255);

-- alterando o tipo da coluna descrição 
alter table tb_produtos change descricao description varchar(255);

-- deletando a estrutura 
alter table tb_produtos drop description;


INSERT INTO tb_produtos(nome,quantidade,data_validade,preco)
VALUES("kiwi", 700, "2025-10-27", 25.00);

select * from tb_produtos where preco >= 20;