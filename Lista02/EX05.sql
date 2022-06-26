CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categoria (

	id_categoria BIGINT auto_increment,
    categoria VARCHAR(255),
    subcategoria VARCHAR(255),
    
    PRIMARY KEY (id_categoria)

);

CREATE TABLE tb_produtos (

	id_produtos BIGINT auto_increment,
	nome VARCHAR(255),
	valor DECIMAL(9,2),
    estoque INT,
    categoria_id BIGINT,
    
    PRIMARY KEY (id_produtos),
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id_categoria)

);

INSERT INTO tb_categoria(categoria, subcategoria) VALUES ("Banheiro", "Vaso Sanitário");
INSERT INTO tb_categoria(categoria, subcategoria) VALUES ("Banheiro", "Pia");
INSERT INTO tb_categoria(categoria, subcategoria) VALUES ("Banheiro", "Chuveiro Elétrico");

INSERT INTO tb_categoria(categoria, subcategoria) VALUES ("Construção", "Cimento");
INSERT INTO tb_categoria(categoria, subcategoria) VALUES ("Construção", "Tijolo");


INSERT INTO tb_produtos(nome, valor, estoque, categoria_id) VALUES ("Kit Vaso Sanitário com Caixa Acoplada 3/6L Axis Deca", 1489.90, 46, 1);
INSERT INTO tb_produtos(nome, valor, estoque, categoria_id) VALUES ("Kit Vaso Sanitário com Caixa Acoplada 3/6L Ravena Deca", 714.90, 89, 1);
INSERT INTO tb_produtos(nome, valor, estoque, categoria_id) VALUES ("Chuveiro Elétrico 4T 5500W 127V (110V)", 68.90, 345, 3);
INSERT INTO tb_produtos(nome, valor, estoque, categoria_id) VALUES ("Chuveiro Elétrico Space Power 6400W 220V", 119.90, 246, 3);
INSERT INTO tb_produtos(nome, valor, estoque, categoria_id) VALUES ("Cuba de Apoio Cerâmica Cannes 41x31cm Preta Sensea", 371.90, 345, 2);
INSERT INTO tb_produtos(nome, valor, estoque, categoria_id) VALUES ("Cuba de Apoio Cerâmica 30x30x11cm Cinza Claro Nice Sensea", 219.90, 534, 2);
INSERT INTO tb_produtos(nome, valor, estoque, categoria_id) VALUES ("Cimento CP II E 32 Saco de 50kg Tupi", 35.90, 322, 4);
INSERT INTO tb_produtos(nome, valor, estoque, categoria_id) VALUES ("Cimento CP II Saco de 25kg", 19.90, 163, 4);
INSERT INTO tb_produtos(nome, valor, estoque, categoria_id) VALUES ("Bloco Cerâmico Vedação 9x19x19cm Cerâmica Nova Conquista -UNIDADE ", 1.09, 25876, 5);

SELECT * FROM tb_produtos WHERE valor > 100;
SELECT * FROM tb_produtos WHERE valor > 75 && valor < 150;
SELECT * FROM tb_produtos WHERE nome LIKE 'c%';

SELECT * FROM tb_produtos INNER JOIN tb_categoria
ON tb_categoria.id_categoria = tb_produtos.categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_categoria
ON tb_categoria.id_categoria = tb_produtos.categoria_id WHERE id_categoria = 2;