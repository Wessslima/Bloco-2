CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(

	id bigint auto_increment primary key,
	medicamentos varchar(255),
    estoque boolean
);

CREATE TABLE tb_produtos(
	id bigint auto_increment primary key,
	tipo varchar(255),
    preco decimal(6,2),
    categoria_id bigint,
    
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(medicamentos, estoque)VALUES("Dor",true);
INSERT INTO tb_categorias(medicamentos, estoque)VALUES("Enjoo",true);
INSERT INTO tb_categorias(medicamentos, estoque)VALUES("Dor",false);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(tipo, preco, categoria_id)
VALUES("Cabeça", 5.00, 1);

INSERT INTO tb_produtos(tipo, preco, categoria_id)
VALUES("Gravides", 60.00, 2);

INSERT INTO tb_produtos(tipo, preco, categoria_id)
VALUES("Estômago", 10.00, 3);

SELECT * FROM tb_produtos WHERE preco > 50.00 ORDER BY preco DESC;

SELECT * FROM tb_produtos WHERE preco >= 5 AND preco <= 60;

SELECT * FROM tb_produtos WHERE tipo LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id;