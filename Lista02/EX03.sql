CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categoria (

	id_categoria BIGINT auto_increment,
    departamento VARCHAR(255),
    -- VARCHAR(255),

	primary key (id_categoria)

);

CREATE TABLE tb_produtos (

	id_produto BIGINT auto_increment,
    nome VARCHAR(255),
    valor DECIMAL(7,2),
    marca VARCHAR(255),
    quantidadeEstoque BIGINT,
    departamento_id BIGINT,
    
    primary key (id_produto),
    foreign key (departamento_id) references tb_categoria (id_categoria)

);

INSERT INTO tb_categoria(departamento) VALUES ("Medicamentos");
INSERT INTO tb_categoria(departamento) VALUES ("Genéricos");
INSERT INTO tb_categoria(departamento) VALUES ("Beleza e Higiene");
INSERT INTO tb_categoria(departamento) VALUES ("Auto Teste Covid");
INSERT INTO tb_categoria(departamento) VALUES ("Mamãe e Bebê");


INSERT INTO tb_produtos(nome, valor, quantidadeEstoque, departamento_id) VALUES ("Rivotril 2,0mg Roché 30 comprimidos", 30.90, 213, 1);
INSERT INTO tb_produtos(nome, valor, quantidadeEstoque, departamento_id) VALUES ("Dexilant 60mg Takeda 30 Cápsulas", 94.58, 123, 1);
INSERT INTO tb_produtos(nome, valor, quantidadeEstoque, departamento_id) VALUES ("Avicis 0,025mg/ml Galderma Solução Capilar 100ml", 150.43, 33, 1);

INSERT INTO tb_produtos(nome, valor, quantidadeEstoque, departamento_id) VALUES ("Paracetamol 750mg 20 comprimidos genérico", 23.90, 475, 2);
INSERT INTO tb_produtos(nome, valor, quantidadeEstoque, departamento_id) VALUES ("Tadalafila 20mg Genérico Neo Química 4 Comprimidos Revestidos", 23.35, 32, 2);
INSERT INTO tb_produtos(nome, valor, quantidadeEstoque, departamento_id) VALUES ("Domperidona 10mg Genérico 30 Comprimidos", 13.45, 87, 2);

INSERT INTO tb_produtos(nome, valor, quantidadeEstoque, departamento_id) VALUES ("Hastes Flexíveis Cotonetes 150 Unidades", 8.90, 545, 3);
INSERT INTO tb_produtos(nome, valor, quantidadeEstoque, departamento_id) VALUES ("Escova Dental Colgate Slim Soft Preta 4 Unidades", 41.90, 125, 3);
INSERT INTO tb_produtos(nome, valor, quantidadeEstoque, departamento_id) VALUES ("Hidratante Facial Em Gel Nivea Com Ácido Hialurônico E Pepino 100g", 34.49, 67, 3);

INSERT INTO tb_produtos(nome, valor, quantidadeEstoque, departamento_id) VALUES ("Autoteste Covid-19 Nasal Ag Detect 1 Unidade", 66.50, 738, 4);

INSERT INTO tb_produtos(nome, valor, quantidadeEstoque, departamento_id) VALUES ("Leite Em Pó Ninho Zero Lactose 700g", 42.99, 167, 5);
INSERT INTO tb_produtos(nome, valor, quantidadeEstoque, departamento_id) VALUES ("Fralda Pampers Confort Sec G 70 Unidades", 93.90, 126, 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos 
WHERE valor > 50;

SELECT * FROM tb_produtos
WHERE valor >= 5 && valor <= 60;

SELECT * FROM tb_produtos INNER JOIN tb_categoria
ON tb_categoria.id_categoria = tb_produtos.departamento_id; 

SELECT * FROM tb_produtos INNER JOIN tb_categoria
ON tb_categoria.id_categoria = tb_produtos.departamento_id WHERE departamento_id = 2; 

