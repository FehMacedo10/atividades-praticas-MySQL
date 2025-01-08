CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias (
	id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_produtos (
	id_produto INT AUTO_INCREMENT,
    nome_produto VARCHAR(255) NOT NULL,
    descricao_produto TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    categoriaid BIGINT,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES ("Ferramentas", "Itens utilizados para construção e reparos.");
INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES ("Materiais de Construção", "Produtos básicos como cimento, areia, e tijolos.");
INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES ("Elétrica", "Produtos relacionados a instalações elétricas.");
INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES ("Hidráulica", "Materiais para instalações de água e esgoto.");
INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES ("Pintura", "Produtos para pintura como tintas e acessórios.");

INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, estoque, categoriaid)
VALUES ("Martelo", "Ferramenta para pregar e remover pregos.", 35.50, 20, 1);
INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, estoque, categoriaid)
VALUES ("Chave de Fenda", "Usada para apertar ou soltar parafusos.", 15.90, 50, 1);
INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, estoque, categoriaid)
VALUES ("Cimento 50kg", "Saco de cimento para construção.", 30.00, 100, 2);
INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, estoque, categoriaid)
VALUES ("Areia Fina 1m³", "Areia para acabamentos e rebocos.", 120.00, 15, 2);
INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, estoque, categoriaid)
VALUES ("Fio Elétrico 10m", "Fio para instalações elétricas.", 25.00, 200, 3);
INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, estoque, categoriaid)
VALUES ("Interruptor", "Interruptor simples para luzes.", 10.00, 80, 3);
INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, estoque, categoriaid)
VALUES ("Tubo PVC 2m", "Tubo para condução de água.", 18.50, 60, 4);
INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, estoque, categoriaid)
VALUES ("Tinta Látex Branca", "Tinta para paredes internas.", 55.00, 30, 5);

-- QUERIES DE VISUALIZAÇÕES DA TB_PRODUTOS
SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 100.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";

-- QUERY UNINDO AS INFORMAÇÔES DAS 2 TABELAS
SELECT nome_produto, descricao_produto, preco, estoque, tb_categorias.nome_categoria, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id_categoria;

SELECT nome_produto, descricao_produto, preco, estoque, tb_categorias.nome_categoria, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id_categoria
WHERE nome_categoria LIKE "Hidráulica";