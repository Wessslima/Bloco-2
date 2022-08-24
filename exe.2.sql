CREATE DATABASE db_lojas_americanas;
USE db_lojas_americanas;

CREATE TABLE tb_produtos(
id bigint auto_increment primary key,
nome varchar(255),
valor int,
disponivel_estoque varchar(255)
);

INSERT INTO tb_produtos(nome, valor, disponivel_estoque)VALUE("Aparador PHILIPS", 180, "não");

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE valor > 500;
SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET disponivel_estoque = "não" WHERE id = 3;
UPDATE tb_produtos SET disponivel_estoque = "sim" WHERE id = 2;
UPDATE tb_produtos SET disponivel_estoque = "não" WHERE id = 1;