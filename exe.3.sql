CREATE DATABASE db_escola_generation;
USE db_escola_generation;
CREATE TABLE tb_alunes(
	id bigint auto_increment primary key,
    nome varchar(255),  
    data_nascimento date,
    turma int,
    nota decimal(4,2)
);

INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Ruriê Miguel","1997-02-05",57, 9.9);
SELECT * FROM tb_alunes;
SELECT * FROM tb_alunes WHERE nota > 7;
SELECT * FROM tb_alunes WHERE nota < 7;

UPDATE tb_alunes SET nota = 10 WHERE id = 1;
SET SQL_SAFE_UPDATES = 0;