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
    classe_id BIGINT,

	primary key (id), 
    foreign key (classe_id) REFERENCES tb_classes (id)

);

INSERT INTO tb_classes(país, estiloDeLuta) VALUES ("Brasil", "Capoeira");
INSERT INTO tb_classes(país, estiloDeLuta) VALUES ("China", "Kung FU");
INSERT INTO tb_classes(país, estiloDeLuta) VALUES ("Russia", "Systema");
INSERT INTO tb_classes(país, estiloDeLuta) VALUES ("Brasil/Russia", "Maromba");

INSERT INTO tb_personagens(nome, idade, habilidadeEspecial, classe_id) VALUES("Mestre Salsicha", 40, "Corre na parede", 1);
INSERT INTO tb_personagens(nome, idade, habilidadeEspecial, classe_id) VALUES("Sargento Pão com Ovo", 33, "Esquiva de olhos fechados", 3);
INSERT INTO tb_personagens(nome, idade, habilidadeEspecial, classe_id) VALUES("Tadallafelas", 28, "Mortal em camera lenta", 4);
INSERT INTO tb_personagens(nome, idade, habilidadeEspecial, classe_id) VALUES("Jaden Smith", 23, "Invoca o Justin Bieber durante a luta", 2);

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classes_id;

SELECT * FROM tb_classes;

SELECT * FROM tb_personagens;
