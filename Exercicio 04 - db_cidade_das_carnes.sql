CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
	id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao_categoria VARCHAR(255)
);

CREATE TABLE tb_produtos (
	id_produto BIGINT AUTO_INCREMENT,
    nome_produto VARCHAR(255) NOT NULL,
    preco DECIMAL(5,2) NOT NULL,
    peso_kg DECIMAL(5,2),
    disponibilidade VARCHAR(10) NOT NULL,
    categoriaid BIGINT,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES ("Carnes Bovinas", "Cortes nobres e selecionados de carne bovina");
INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES ("Carnes Suínas", "Variedade de cortes e preparações de carne suína");
INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES ("Carnes de Frango", "Cortes frescos e temperados de frango");
INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES ("Carnes Exóticas", "Carne de animais exóticos como javali e cordeiro");
INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES ("Carnes Moídas", "Carnes moídas prontas para diversas receitas");

INSERT INTO tb_produtos (nome_produto, preco, peso_kg, disponibilidade, categoriaid)
VALUES ("Picanha", 89.90, 1.2, TRUE, 1);
INSERT INTO tb_produtos (nome_produto, preco, peso_kg, disponibilidade, categoriaid)
VALUES ("Costela de Boi", 49.90, 2.5, TRUE, 1);
INSERT INTO tb_produtos (nome_produto, preco, peso_kg, disponibilidade, categoriaid)
VALUES ("Pernil Suíno", 29.90, 3.0, TRUE, 2);
INSERT INTO tb_produtos (nome_produto, preco, peso_kg, disponibilidade, categoriaid)
VALUES ("Linguiça Toscana", 19.90, 1.0, TRUE, 2);
INSERT INTO tb_produtos (nome_produto, preco, peso_kg, disponibilidade, categoriaid)
VALUES ("Peito de Frango", 15.90, 1.5, TRUE, 3);
INSERT INTO tb_produtos (nome_produto, preco, peso_kg, disponibilidade, categoriaid)
VALUES ("Asa de Frango", 12.90, 1.0, TRUE, 3);
INSERT INTO tb_produtos (nome_produto, preco, peso_kg, disponibilidade, categoriaid)
VALUES ("Javali", 119.90, 2.0, FALSE, 4);
INSERT INTO tb_produtos (nome_produto, preco, peso_kg, disponibilidade, categoriaid)
VALUES ("Carne Moída Premium", 32.90, 1.0, TRUE, 5);

-- QUERIES DE VISUALIZAÇÕES DA TB_PRODUTOS
SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";

-- QUERY UNINDO AS INFORMAÇÔES DAS 2 TABELAS
SELECT nome_produto, preco, peso_kg, disponibilidade, tb_categorias.nome_categoria, tb_categorias.descricao_categoria
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id_categoria;

SELECT nome_produto, preco, peso_kg, disponibilidade, tb_categorias.nome_categoria, tb_categorias.descricao_categoria
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id_categoria
WHERE nome_categoria LIKE "Carnes Suínas";