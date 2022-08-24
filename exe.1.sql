CREATE DATABASE db_rh;
USE db_rh;
CREATE TABLE tb_funcionario(
id bigint auto_increment primary key,
nome varchar(255),
setor varchar(255),
salario int
);

INSERT INTO tb_funcionario(nome, setor, salario)VALUES("Gabriel", "Repositor", 1800);

SELECT * FROM tb_funcionario;
SELECT * FROM tb_funcionario WHERE salario > 2000;
SELECT * FROM tb_funcionario WHERE salario < 2000;

UPDATE tb_funcionario SET salario = 1800 WHERE id = 1;
UPDATE tb_funcionario SET salario = 2000 WHERE id = 3;