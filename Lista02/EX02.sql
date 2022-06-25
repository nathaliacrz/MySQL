CREATE DATABASE db_pizzariajava;

USE db_pizzariajava;

CREATE TABLE tb_categorias(

	id BIGINT auto_increment,
    tamanho VARCHAR(255),

	primary key (id)
    
);

CREATE TABLE tb_pizzas(
	
    id BIGINT auto_increment,
    sabor VARCHAR(255),
    valor DECIMAL(5,2),
    gostoPredominante VARCHAR(255),
  --  bordaRecheada VARCHAR(255),
    categoria_id BIGINT,

	primary key(id),
    foreign key (categoria_id) references tb_categorias(id)
	
);

INSERT INTO tb_categorias(tamanho) VALUES ("Grande");
INSERT INTO tb_categorias(tamanho) VALUES ("Media");
INSERT INTO tb_categorias(tamanho) VALUES ("Pequena");
INSERT INTO tb_categorias(tamanho) VALUES ("Brotinho");


INSERT INTO tb_pizzas(sabor, valor, gostoPredominante, categoria_id) VALUES ("Frango com catupiry", 69.90, "Salgada", 1);
INSERT INTO tb_pizzas(sabor, valor, gostoPredominante, categoria_id) VALUES ("Frango com catupiry", 55.90, "Salgada", 2);
INSERT INTO tb_pizzas(sabor, valor, gostoPredominante, categoria_id) VALUES ("Frango com catupiry", 45.90, "Salgada", 3);

INSERT INTO tb_pizzas(sabor, valor, gostoPredominante, categoria_id) VALUES ("Portuguesa", 74.90 , "Salgada", 1);
INSERT INTO tb_pizzas(sabor, valor, gostoPredominante, categoria_id) VALUES ("Portuguesa", 64.90 , "Salgada", 2);
INSERT INTO tb_pizzas(sabor, valor, gostoPredominante, categoria_id) VALUES ("Portuguesa", 54.90 , "Salgada", 3);

INSERT INTO tb_pizzas(sabor, valor, gostoPredominante, categoria_id) VALUES ("4 Queijos", 64.90, "Salgada", 1);
INSERT INTO tb_pizzas(sabor, valor, gostoPredominante, categoria_id) VALUES ("4 Queijos", 54.90, "Salgada", 2);
INSERT INTO tb_pizzas(sabor, valor, gostoPredominante, categoria_id) VALUES ("4 Queijos", 44.90, "Salgada", 3);

INSERT INTO tb_pizzas(sabor, valor, gostoPredominante, categoria_id) VALUES ("Calabresa", 59.90 , "Salgada", 1);
INSERT INTO tb_pizzas(sabor, valor, gostoPredominante, categoria_id) VALUES ("Calabresa", 49.90 , "Salgada", 2);
INSERT INTO tb_pizzas(sabor, valor, gostoPredominante, categoria_id) VALUES ("Calabresa", 39.90 , "Salgada", 3);

INSERT INTO tb_pizzas(sabor, valor, gostoPredominante, categoria_id) VALUES ("Ovomaltine", 29.90 , "Doce", 4);
INSERT INTO tb_pizzas(sabor, valor, gostoPredominante, categoria_id) VALUES ("Brigadeiro com Morango", 29.90 , "Doce", 4);
INSERT INTO tb_pizzas(sabor, valor, gostoPredominante, categoria_id) VALUES ("Beijinho com Uva", 29.90 , "Doce", 4);

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE valor > 50 && valor < 100; 
SELECT * FROM tb_pizzas WHERE valor < 45;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id; 

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id WHERE tamanho LIKE 'Brotinho'; 
