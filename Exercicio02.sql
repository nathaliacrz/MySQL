CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(

	id BIGINT auto_increment,
	nome VARCHAR(255),
    categoria VARCHAR(255),
    valor DECIMAL(9,2),
    estoque INT,
    
    primary key (id)
    
    );

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 500;

SELECT * FROM tb_produtos WHERE valor < 500;

INSERT INTO tb_produtos(nome, categoria, valor, estoque)VALUES("Notebook", "Eletronicos", 5700.00, 135);

INSERT INTO tb_produtos(nome, categoria, valor, estoque)VALUES("Iphone 13 Pro Max 512gb", "Eletronicos", 14000.00, 34);

INSERT INTO tb_produtos(nome, categoria, valor, estoque)VALUES("Carrinho da Barbie de controle remoto", "Brinquedos", 350.00, 20);

INSERT INTO tb_produtos(nome, categoria, valor, estoque)VALUES("Tech Deck: Edição Limitada", "Brinquedos", 450.00, 10);

INSERT INTO tb_produtos(nome, categoria, valor, estoque)VALUES("Geladeira Eletrolux 5 portas com Televisão 40 polegadas e Playstation 5 embutidos", "Eletrodomésticos", 15000.00, 4);

INSERT INTO tb_produtos(nome, categoria, valor, estoque)VALUES("Enciclopédia: Aprenda enquanto tenta sobreviver em uma ilha", "Livros", 55000.00, 2);

INSERT INTO tb_produtos(nome, categoria, valor, estoque)VALUES("Moranguete", "Comida ruim", 0.50, 2343);

INSERT INTO tb_produtos(nome, categoria, valor, estoque)VALUES("Durateston 250mg - Danone de maromba", "Saúde", 30.00, 500);

UPDATE tb_produtos
SET valor = 0.25 
WHERE id = 7

