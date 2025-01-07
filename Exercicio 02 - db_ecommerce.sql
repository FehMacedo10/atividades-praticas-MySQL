CREATE DATABASE db_ecommerce;
USE db_ecommerce;
CREATE TABLE tb_produtos (
	id_produto BIGINT AUTO_INCREMENT NOT NULL,
    nome_produto VARCHAR(255) NOT NULL,
    descricao_produto VARCHAR(500),
    preco DECIMAL(10,2) NOT NULL,
    estoque INT,
	PRIMARY KEY (id_produto)
);

INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, estoque)
VALUES ("Smartphone Galaxy S20FE", 
		"Smartphone Samsung Galaxy S20FE com tela Super AMOLED 6.5, 128GB de armazenamento e câmera de 32MP.",
        2199.00,
        99);
INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, estoque)
VALUES ("Tênis Esportivo Puma", 
		"Tênis esportivo feminino Puma, ideal para corridas, na cor lilás, tamanho 34.",
        459.90,
        40);
INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, estoque)
VALUES ("Notebook Dell Inspiron", 
		"Notebook Dell Inspiron 15.6, processador Intel Core i7, 16GB RAM, SSD 512GB, Windows 11 instalado.",
        5999.90,
        35);
INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, estoque)
VALUES ("Smart TV LG 55 4K", 
		"TV LG 55 4K UHD, com inteligência artificial e compatibilidade com Alexa e Google Assistant.",
        3499.00,
        20);
INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, estoque)
VALUES ("Mochila de Viagem", 
		"Mochila resistente à água, com compartimento para notebook e espaço para 20L, ideal para viagens.",
        159.99,
        65);
INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, estoque)
VALUES ("Fone de Ouvido JBL", 
		"Fone de ouvido JBL Bluetooth com cancelamento de ruído, bateria de 30 horas de reprodução contínua.",
        499.99,
        90);
INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, estoque)
VALUES ("Micro-ondas Electrolux", 
		"Micro-ondas Electrolux 20L, painel digital, descongelamento automático e função grill.",
        799.00,
        30);
INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, estoque)
VALUES ("Relógio Smartwatch", 
		"Relógio inteligente com monitoramento de frequência cardíaca, contador de passos e resistência à água.",
        1099.00,
        87);

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET estoque = 10 WHERE id_produto = 6;