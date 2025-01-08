 CREATE DATABASE db_farmacia_bem_estar;
 USE db_farmacia_bem_estar;
 
 CREATE TABLE tb_categorias (
	id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
 );
 
  CREATE TABLE tb_produtos (
	id_produto BIGINT AUTO_INCREMENT,
    nome_produto VARCHAR(255) NOT NULL,
	preco DECIMAL(4,2) NOT NULL,
    estoque INT NOT NULL,
    data_validade DATE,
    categoriaid BIGINT,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id_categoria)
 );
 
INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES ("Medicamentos", "Produtos para tratamentos de saúde e doenças");
INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES ("Higiene Pessoal", "Produtos relacionados à limpeza e higiene pessoal");
INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES ("Cosméticos", "Produtos voltados para estética e cuidados com a pele");
INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES ("Vitaminas e Suplementos", "Suplementos alimentares e vitamínicos");
INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES ("Materiais Médicos", "Produtos para uso médico e hospitalar");

INSERT INTO tb_produtos (nome_produto, preco, estoque, data_validade, categoriaid)
VALUES ("Paracetamol 500mg", 12.99, 100, "2026-01-01", 1);
INSERT INTO tb_produtos (nome_produto, preco, estoque, data_validade, categoriaid)
VALUES ("Antisséptico Bucal", 8.50, 50, "2025-12-31", 2);
INSERT INTO tb_produtos (nome_produto, preco, estoque, data_validade, categoriaid)
VALUES ("Protetor Solar FPS 50", 45.90, 30, "2026-06-15", 3);
INSERT INTO tb_produtos (nome_produto, preco, estoque, data_validade, categoriaid)
VALUES ("Vitamina C 500mg", 22.00, 60, "2025-11-30", 4);
INSERT INTO tb_produtos (nome_produto, preco, estoque, data_validade, categoriaid)
VALUES ("Curativo Adesivo", 5.75, 200, NULL, 5);
INSERT INTO tb_produtos (nome_produto, preco, estoque, data_validade, categoriaid)
VALUES ("Shampoo Anticaspa", 17.99, 40, "2025-08-20", 2);
INSERT INTO tb_produtos (nome_produto, preco, estoque, data_validade, categoriaid)
VALUES ("Pomada para Assaduras", 9.99, 25, "2026-02-28", 1);
INSERT INTO tb_produtos (nome_produto, preco, estoque, data_validade, categoriaid)
VALUES ("Máscara Descartável", 1.50, 500, NULL, 5);

-- QUERIES DE VISUALIZAÇÕES DA TB_PRODUTOS
SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";

-- QUERY UNINDO AS INFORMAÇÔES DAS 2 TABELAS
SELECT nome_produto, preco, estoque, data_validade, tb_categorias.nome_categoria, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id_categoria;

SELECT nome_produto preco, estoque, data_validade, tb_categorias.nome_categoria, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id_categoria
WHERE nome_categoria LIKE "Cosméticos";