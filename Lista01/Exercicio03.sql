CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_turmas(

	id BIGINT auto_increment,
    turma VARCHAR(255),
    professor VARCHAR(5000),
    
    primary key(id)

);

SELECT * FROM tb_turmas;

INSERT INTO tb_turmas(turma, professor) VALUES ("9° Ano - Ensino Fundamental", "Professores: Lucas, Matias, Juliana, Tarsila, Juan, Italo");
 
CREATE TABLE tb_alunos(

	id BIGINT auto_increment,
	nome VARCHAR(255),
    idade INT,
    nota DECIMAL(5,2),
    turma_id BIGINT,
    
	primary key (id),
	foreign key (turma_id) references tb_turmas (id)

);

SELECT * FROM tb_alunos;

INSERT INTO tb_alunos(nome, idade, nota, turma_id) VALUES ("Cirilo", 11, 9.5, 6);

UPDATE tb_alunos
SET nota = 10
WHERE id = 9;

