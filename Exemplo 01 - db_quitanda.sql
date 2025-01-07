CREATE DATABASE db_quitanda; -- cria o banco de dados

USE db_quitanda; -- seleciona o banco de dados

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT NOT NULL, -- 1, 2  
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    datavalidade DATE,
    preco DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (id)
);


-- Inserir registros/produtos
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("tomate", 100, "2023-12-15", 8.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("maçã",20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("laranja",50, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("banana",200, "2023-12-15", 12.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("uva",1200, "2023-12-15", 30.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("pêra",500, "2023-12-15", 2.99);

-- Visualizar/Selecionar os Registros/Produtos
SELECT * FROM tb_produtos; -- Visualizar toda a Tabela de Produtos

SELECT nome, preco FROM tb_produtos; -- Visualizar as colunas Nome e P

SELECT * FROM tb_produtos WHERE preco < 10; -- Op. Relacionais > < == >= <= !=

-- ALTERAR A ESTRUTURA DA TABELA
ALTER TABLE tb_produtos MODIFY preco DECIMAL(7,2);

-- ALTERAR OS DADOS DA TABELA
UPDATE tb_produtos SET preco = 2.99 WHERE id = 6; -- WHERE id