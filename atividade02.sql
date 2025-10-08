create database bd_ecommerce;
use bd_ecommerce;

create table tb_produto(
	id bigint auto_increment,
    nome_produto varchar(100),
	preco decimal(6.2),
    quantidade int,
    descricao TEXT, 
    primary key(id)
);
 insert into tb_produto (nome_produto, preco,quantidade,descricao)
 values("patins inline", "800.00", 50, "patins para urban");
 
 insert into tb_produto (nome_produto, preco,quantidade,descricao)
 values("patins quad", "1000.00", 30, "patins para freestyle");
 
 insert into tb_produto (nome_produto, preco,quantidade,descricao)
 values("meias", "100.00", 10, "meias longas");
 
 insert into tb_produto (nome_produto, preco,quantidade,descricao)
 values("capacete", "200.00", 30, "protege a sua cabeça nas quedas");
 
 insert into tb_produto (nome_produto, preco,quantidade,descricao)
 values("skate", "500.00", 20, "estilo urban");
 
 insert into tb_produto (nome_produto, preco,quantidade,descricao)
 values("rodas", "300.00", 10, "rodas para patins e personalizar");
 
 insert into tb_produto (nome_produto, preco,quantidade,descricao)
 values("proteção de patins", "200.00", 5, "protege o cotovelo e joelho");
 
 insert into tb_produto (nome_produto, preco,quantidade,descricao)
 values("patins mirim", "600.00", 35, "patins adequado para crianças");
 
 insert into tb_produto (nome_produto, preco,quantidade,descricao)
 values("mochilas", "249.00", 10, "mochila para patins inline");
 
 select * from tb_produto;
 alter table tb_produto modify preco decimal(6,2);
 
 select * from tb_produto where preco>=500;
 
 
  select * from tb_produto where preco<500;