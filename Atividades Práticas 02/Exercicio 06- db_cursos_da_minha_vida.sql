CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
	id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_produtos (
	id_produto BIGINT AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(8, 2) NOT NULL,
    duracao INT NOT NULL,
    descricao_produto VARCHAR(255),
	categoriaid BIGINT,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES ("Tecnologia", "Cursos voltados para tecnologia e inovação.");
INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES ("Negócios", "Cursos relacionados à gestão e empreendedorismo.");
INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES ("Saúde", "Cursos focados em saúde e bem-estar.");
INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES ("Educação", "Cursos sobre práticas educacionais e ensino.");
INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES ("Arte", "Cursos de criatividade, design e artes visuais.");

INSERT INTO tb_produtos (nome_produto, preco, duracao, categoriaid, descricao_produto)
VALUES ("Curso de Java para Iniciantes", 199.90, 40, 1, "Aprenda os fundamentos da programação Java.");
INSERT INTO tb_produtos (nome_produto, preco, duracao, categoriaid, descricao_produto)
VALUES ("Gestão de Projetos Ágeis", 149.90, 20, 2, "Curso para implementar práticas ágeis em projetos.");
INSERT INTO tb_produtos (nome_produto, preco, duracao, categoriaid, descricao_produto)
VALUES ("Introdução à Nutrição", 99.90, 15, 3, "Aprenda conceitos básicos de nutrição e dietas.");
INSERT INTO tb_produtos (nome_produto, preco, duracao, categoriaid, descricao_produto)
VALUES ("Formação de Professores", 879.90, 30, 4, "Curso para aprimorar habilidades pedagógicas.");
INSERT INTO tb_produtos (nome_produto, preco, duracao, categoriaid, descricao_produto)
VALUES ("Ilustração Digital", 649.90, 50, 5, "Aprenda técnicas para criar ilustrações digitais.");
INSERT INTO tb_produtos (nome_produto, preco, duracao, categoriaid, descricao_produto)
VALUES ("Machine Learning Avançado", 299.90, 60, 1, "Domine técnicas avançadas de aprendizado de máquina.");
INSERT INTO tb_produtos (nome_produto, preco, duracao, categoriaid, descricao_produto)
VALUES ("Marketing Digital", 129.90, 25, 2, "Curso para criar estratégias de marketing online.");
INSERT INTO tb_produtos (nome_produto, preco, duracao, categoriaid, descricao_produto)
VALUES ("Yoga para Iniciantes", 89.90, 10, 3, "Curso introdutório para praticar yoga e meditação.");

-- QUERIES DE VISUALIZAÇÕES DA TB_PRODUTOS
SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 500.00;
SELECT * FROM tb_produtos WHERE preco between 600.00 AND 1000.00;
SELECT * FROM tb_produtos WHERE nome_produto LIKE "%j%";

-- QUERY UNINDO AS INFORMAÇÔES DAS 2 TABELAS
SELECT nome_produto, preco, duracao, descricao_produto, tb_categorias.nome_categoria, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id_categoria;

SELECT nome_produto, preco, duracao, descricao_produto, tb_categorias.nome_categoria, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id_categoria
WHERE nome_categoria LIKE "Tecnologia";