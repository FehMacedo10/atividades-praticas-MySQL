CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
	id_classe BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR(255) NOT NULL,
    descricao_classe VARCHAR(255) NOT NULL
);

CREATE TABLE tb_personagens (
	id_personagem BIGINT AUTO_INCREMENT,
    nome_personagem VARCHAR(255) NOT NULL,
    nivel INT NOT NULL,
    ataque INT,
    defesa INT,	
    classeid BIGINT,
    PRIMARY KEY(id_personagem),
    FOREIGN KEY(classeid) REFERENCES tb_classes(id_classe)
);

INSERT INTO tb_classes (nome_classe, descricao_classe)
VALUES ("Guerreiro", "Especialista em combate corpo a corpo");
INSERT INTO tb_classes (nome_classe, descricao_classe)
VALUES ("Mago", "Usa magia para ataques poderosos à distância");
INSERT INTO tb_classes (nome_classe, descricao_classe)
VALUES("Arqueiro", "Especialista em ataques à distância com arco e flecha");
INSERT INTO tb_classes (nome_classe, descricao_classe)
VALUES("Sacerdote", "Equilíbrio entre defesa e ataques sagrados");
INSERT INTO tb_classes (nome_classe, descricao_classe)
VALUES("Ladrao", "Hábil em furtividade e ataques rápidos");

INSERT INTO tb_personagens (nome_personagem, nivel, ataque, defesa, classeid)
VALUES ("Thorin", 10, 3600, 2200, 1); -- Guerreiro
INSERT INTO tb_personagens (nome_personagem, nivel, ataque, defesa, classeid)
VALUES ("Gandalf", 20, 4200, 1700, 2); -- Mago
INSERT INTO tb_personagens (nome_personagem, nivel, ataque, defesa, classeid)
VALUES ("Legolas", 15, 2900, 1200, 3); -- Arqueiro
INSERT INTO tb_personagens (nome_personagem, nivel, ataque, defesa, classeid)
VALUES ("Aragorn", 18, 2000, 2000, 4); -- Sacerdote
INSERT INTO tb_personagens (nome_personagem, nivel, ataque, defesa, classeid)
VALUES ("Bilbo", 12, 3000, 1200, 5); -- Ladrao
INSERT INTO tb_personagens (nome_personagem, nivel, ataque, defesa, classeid)
VALUES ("Frodo", 8, 2700, 1400, 5); -- Ladrao
INSERT INTO tb_personagens (nome_personagem, nivel, ataque, defesa, classeid)
VALUES ("Eowyn", 14, 3900, 2200, 1); -- Guerreiro
INSERT INTO tb_personagens (nome_personagem, nivel, ataque, defesa, classeid)
VALUES ("Saruman", 22, 5000, 900, 2); -- Mago

-- QUERIES DE VISUALIZAÇÕES DA TB_PERSONAGENS
SELECT * FROM tb_personagens;
SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome_personagem LIKE "%c%";

-- QUERY UNINDO AS INFORMAÇÔES DAS 2 TABELAS
SELECT nome_personagem, nivel, ataque, defesa, tb_classes.nome_classe, tb_classes.descricao_classe
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id_classe;

-- QUERY UNINDO AS 2 TABELAS COM CONDIÇÃO DE VISUALIZAÇÃO NA CLASSE DE MAGO PARA OS PERSONAGENS
SELECT nome_personagem, nivel, ataque, defesa, tb_classes.nome_classe, tb_classes.descricao_classe
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id_classe
WHERE nome_classe LIKE "Mago";
