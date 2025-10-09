create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
	id bigint auto_increment,
    categoria varchar(50),
    recheio varchar(20),
    primary key (id)
    );
    
create table tb_pizzas(
	id bigint auto_increment,
    sabor varchar(50),
    tamanho varchar(100),
    preco decimal (6,2),
    disponivel boolean,
    cat_id bigint,
    primary key (id),
    FOREIGN KEY (cat_id) REFERENCES tb_categorias(id)
    );
    
    
insert into tb_categorias(categoria,recheio)
values("salgado", "com recheio");

insert into tb_categorias(categoria,recheio)
values("salgado", "sem recheio");

insert into tb_categorias(categoria,recheio)
values("doce", "sem recheio");

insert into tb_categorias(categoria,recheio)
values("doce", "com recheio");

insert into tb_pizzas(sabor,tamanho,preco,disponivel,cat_id)
values("calabresa", "P", 40.00, true, 2);

insert into tb_pizzas(sabor,tamanho,preco,disponivel,cat_id)
values("calabresa", "M", 56.00, FALSE, 1);

insert into tb_pizzas(sabor,tamanho,preco,disponivel,cat_id)
values("calabresa", "GG", 116.00, true, 1);

insert into tb_pizzas(sabor,tamanho,preco,disponivel,cat_id)
values("brigadeiro", "P", 40.00, true, 3);

insert into tb_pizzas(sabor,tamanho,preco,disponivel,cat_id)
values("brigadeiro", "M", 56.00, true, 3);

insert into tb_pizzas(sabor,tamanho,preco,disponivel,cat_id)
values("brigadeiro", "GG", 116.00, false, 4);

insert into tb_pizzas(sabor,tamanho,preco,disponivel,cat_id)
values("portuguesa", "P", 40.00, false, 1);

insert into tb_pizzas(sabor,tamanho,preco,disponivel,cat_id)
values("portuguesa", "M", 56.00, true, 2);

insert into tb_pizzas(sabor,tamanho,preco,disponivel,cat_id)
values("portuguesa", "GG", 116.00, false, 1);

select * from tb_pizzas where preco > 45.00 order by preco;

select * from tb_pizzas where preco between 50.00 and 100.00 order by preco;

select id,sabor,tamanho,preco,disponivel, cat_id as catedoria from tb_pizzas where sabor like "%c%"; 

select * from tb_pizzas inner join tb_categorias on tb_pizzas.cat_id = tb_categorias.id;

select * from tb_pizzas as p inner join tb_categorias as c on p.cat_id = c.id where categoria = "doce";