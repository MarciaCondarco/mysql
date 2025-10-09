create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
	id bigint auto_increment,
    combatente varchar(100),
    invocador varchar(100),
    primary key(id)
);

create table tb_personagens(
	id bigint auto_increment,
    nome varchar(100),
    habilidade varchar(100),
    forca int,
    defesa int,
    classe_id bigint,
    primary key(id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
    );
    
insert into tb_classes(combatente, invocador)
    values ("guerreiro", "leao");
    
insert into tb_classes(combatente, invocador)
    values ("mago", "corvo");
    
insert into tb_classes(combatente, invocador)
    values ("elfo", "cervo");
    
insert into tb_classes(combatente, invocador)
    values ("druida", "coruja");
    
insert into tb_classes(combatente, invocador)
    values ("fada", "borboletas");
    
insert into tb_personagens(nome, habilidade, forca, defesa,classe_id)
    values ("zayn", "espada", 1800, 1700, 3);
    
insert into tb_personagens(nome, habilidade, forca, defesa,classe_id)
    values ("lili", "arco", 2900, 1700, 1);
    
insert into tb_personagens(nome, habilidade, forca, defesa,classe_id)
    values ("verda", "artes marciais", 2700, 1800, 5);
    
insert into tb_personagens(nome, habilidade, forca, defesa,classe_id)
    values ("happy", "espada", 2800, 1600, 2);
    
insert into tb_personagens(nome, habilidade, forca, defesa,classe_id)
    values ("leon", "arco", 1800, 2700, 4);
    
insert into tb_personagens(nome, habilidade, forca, defesa,classe_id)
    values ("belle", "artes marciais", 900, 1700, 1);
    
insert into tb_personagens(nome, habilidade, forca, defesa,classe_id)
    values ("oak", "espada", 3800, 2700, 3);
    
insert into tb_personagens(nome, habilidade, forca, defesa,classe_id)
    values ("zim", "arco", 1800, 1800, 5);
    
select * from tb_classes;

select * from tb_personagens where forca > 2000;

select * from tb_personagens where forca between 1000 and 2000 order by forca;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

select * from tb_personagens 
INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id 
where habilidade = "arco";