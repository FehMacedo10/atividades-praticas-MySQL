CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_pizzas (
	id_pizza BIGINT AUTO_INCREMENT,
    nome_pizza VARCHAR(255) NOT NULL,
    preco DECIMAL(4,2) NOT NULL,
    tamanho VARCHAR(255),
    disponibilidade VARCHAR(255),
    categoriaid BIGINT,
    PRIMARY KEY (id_pizza),
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES ("Tradicional", 'Pizzas clássicas e populares');
INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES ("Especiais", 'Pizzas com combinações exclusivas');
INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES ("Vegana", 'Pizzas feitas sem ingredientes de origem animal');
INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES ("Premium", 'Pizzas com ingredientes gourmet');
INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES ("Sobremesa", 'Pizzas doces ideais para sobremesas');

INSERT INTO tb_pizzas (nome_pizza, preco, tamanho, categoriaid, disponibilidade)
VALUES ("Mussarela", 25.00, "Média", 1, "Sim");
INSERT INTO tb_pizzas (nome_pizza, preco, tamanho, categoriaid, disponibilidade)
VALUES ("Calabresa", 28.00, "Grande", 1, "Sim");
INSERT INTO tb_pizzas (nome_pizza, preco, tamanho, categoriaid, disponibilidade)
VALUES ("Pepperoni", 30.00, "Grande", 2, "Sim");
INSERT INTO tb_pizzas (nome_pizza, preco, tamanho, categoriaid, disponibilidade)
VALUES ("Vegana Suprema", 32.00, "Média", 3, "Sim");
INSERT INTO tb_pizzas (nome_pizza, preco, tamanho, categoriaid, disponibilidade)
VALUES ("Trufa Negra", 50.00, "Pequena", 4, "Não");
INSERT INTO tb_pizzas (nome_pizza, preco, tamanho, categoriaid, disponibilidade)
VALUES ("Quatro Queijos", 35.00, "Grande", 1, "Sim");
INSERT INTO tb_pizzas (nome_pizza, preco, tamanho, categoriaid, disponibilidade)
VALUES ("Nutella e Morango", 40.00, "Média", 5, "Sim");
INSERT INTO tb_pizzas (nome_pizza, preco, tamanho, categoriaid, disponibilidade)
VALUES ("Banana com Canela", 38.00, "Grande", 5, "Sim");

-- QUERIES DE VISUALIZAÇÕES DA TB_PIZZAS
SELECT * FROM tb_pizzas;
SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
SELECT * FROM tb_pizzas WHERE nome_pizza LIKE "%m%";

-- QUERY UNINDO AS INFORMAÇÔES DAS 2 TABELAS
SELECT nome_pizza, preco, tamanho, disponibilidade, tb_categorias.nome_categoria, tb_categorias.descricao
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id_categoria;

SELECT nome_pizza, preco, tamanho, disponibilidade, tb_categorias.nome_categoria, tb_categorias.descricao
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id_categoria
WHERE nome_categoria LIKE "Sobremesa";