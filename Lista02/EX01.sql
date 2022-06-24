CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(

	id BIGINT auto_increment,
	país VARCHAR(255),
    estiloDeLuta VARCHAR(255),
	
	primary key (id)

);

CREATE TABLE tb_personagens(

	id BIGINT auto_increment,
    nome VARCHAR(255),
    idade INT,
    habilidadeEspecial VARCHAR(255),
    ataque INT,
    defesa INT,
    classe_id BIGINT,

	primary key (id), 
    foreign key (classe_id) REFERENCES tb_classes (id)

);

INSERT INTO tb_classes(país, estiloDeLuta) VALUES ("Brasil", "Capoeira");
INSERT INTO tb_classes(país, estiloDeLuta) VALUES ("China", "Kung FU");
INSERT INTO tb_classes(país, estiloDeLuta) VALUES ("Russia", "Systema");
INSERT INTO tb_classes(país, estiloDeLuta) VALUES ("Brasil/Russia", "Maromba");

INSERT INTO tb_personagens(nome, idade, habilidadeEspecial, ataque, defesa, classe_id) VALUES("Mestre Salsicha", 40, "Corre na parede", 1700, 3200, 1);
INSERT INTO tb_personagens(nome, idade, habilidadeEspecial, ataque, defesa, classe_id) VALUES("Sargento Pão com Ovo", 33, "Esquiva de olhos fechados", 1200, 4000, 3);
INSERT INTO tb_personagens(nome, idade, habilidadeEspecial, ataque, defesa, classe_id) VALUES("Tadallafelas", 28, "Abre coco com o cotovelo ou cabeça", 3900, 2500, 4);
INSERT INTO tb_personagens(nome, idade, habilidadeEspecial, ataque, defesa, classe_id) VALUES("Jaden Smith", 23, "Invoca o Justin Bieber durante a luta", 1900, 1500, 2);

SELECT * FROM tb_classes;

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id WHERE ataque > 2000;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id WHERE defesa > 1000 && defesa < 2000;

SELECT * FROM tb_personagens 
WHERE nome LIKE 't%';

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id WHERE país LIKE 'Brasil';