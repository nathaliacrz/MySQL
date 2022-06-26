CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria (

	id_categoria BIGINT auto_increment,
    animal VARCHAR(255),
    parte_do_animal VARCHAR(255),
    
    PRIMARY KEY (id_categoria)

);

CREATE TABLE tb_carnes (

	id_carnes BIGINT auto_increment,
	nome VARCHAR(255),
    peso VARCHAR(255),
	valor DECIMAL(9,2),
    categoria_id BIGINT,
    
    PRIMARY KEY (id_carnes),
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id_categoria)

);

INSERT INTO tb_categoria(animal, parte_do_animal) VALUES ("Boi", "Lombo Inferior");
INSERT INTO tb_categoria(animal, parte_do_animal) VALUES ("Boi", "Parte traseira");
INSERT INTO tb_categoria(animal, parte_do_animal) VALUES ("Frango", "Peito");
INSERT INTO tb_categoria(animal, parte_do_animal) VALUES ("Porco", "Costela");
INSERT INTO tb_categoria(animal, parte_do_animal) VALUES ("Porco", "Gordura");

INSERT INTO tb_carnes(nome, peso, valor, categoria_id) VALUES ("Maminha", "1kg", 43.99, 1);
INSERT INTO tb_carnes(nome, peso, valor, categoria_id) VALUES ("Filé Mignom", "1kg", 89.90, 2);
INSERT INTO tb_carnes(nome, peso, valor, categoria_id) VALUES ("Filé de Peito de Frango", "1kg", 23.90, 3);
INSERT INTO tb_carnes(nome, peso, valor, categoria_id) VALUES ("Costeleta de porco", "1kg", 33.90, 4);
INSERT INTO tb_carnes(nome, peso, valor, categoria_id) VALUES ("Toucinho", "1kg", 22.79, 5);
INSERT INTO tb_carnes(nome, peso, valor, categoria_id) VALUES ("Contra filé", "1kg", 59.90, 2);
INSERT INTO tb_carnes(nome, peso, valor, categoria_id) VALUES ("Alcatra", "1kg", 49.90, 2);

SELECT * FROM tb_carnes WHERE valor > 50;

SELECT * FROM tb_carnes WHERE valor > 50 && valor < 150;

SELECT * FROM tb_carnes WHERE nome LIKE 'C%';

SELECT * FROM tb_carnes INNER JOIN tb_categoria
ON tb_categoria.id_categoria = tb_carnes.categoria_id;

SELECT * FROM tb_carnes INNER JOIN tb_categoria
ON tb_categoria.id_categoria = tb_carnes.categoria_id WHERE animal = "Porco";

