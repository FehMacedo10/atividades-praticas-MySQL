CREATE DATABASE db_registroescola;
USE db_registroescola;
CREATE TABLE tb_alunos(
	rm_aluno BIGINT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL,
    turma VARCHAR(255) NOT NULL,
    media_final DECIMAL(2,1) NOT NULL,
    PRIMARY KEY (rm_aluno)
);

INSERT INTO tb_alunos(nome, data_nascimento, turma, media_final)
VALUES("Aline Oliveira", "2010-10-10", "9ºA", 8.0);
INSERT INTO tb_alunos(nome, data_nascimento, turma, media_final)
VALUES("Bruno Costa", "2011-04-21", "8ºB", 7.5);
INSERT INTO tb_alunos(nome, data_nascimento, turma, media_final)
VALUES("Caio Soares", "2012-03-02", "7ºC", 9.5);
INSERT INTO tb_alunos(nome, data_nascimento, turma, media_final)
VALUES("Daniela Lima Silva", "2013-01-01", "6ºA", 5.5);
INSERT INTO tb_alunos(nome, data_nascimento, turma, media_final)
VALUES("Felipe Macedo Ribeiro", "2010-01-02", "9ºC", 9.0);
INSERT INTO tb_alunos(nome, data_nascimento, turma, media_final)
VALUES("Gabriela Silva", "2011-07-22", "8ºA", 7.0);
INSERT INTO tb_alunos(nome, data_nascimento, turma, media_final)
VALUES("Ingrid de Souza", "2012-02-28", "7ºB", 6.0);
INSERT INTO tb_alunos(nome, data_nascimento, turma, media_final)
VALUES("Julia Vieira", "2013-03-25", "6ºC", 9.0);

SELECT * FROM tb_alunos;
SELECT * FROM tb_alunos WHERE media_final > 7.0;
SELECT * FROM tb_alunos WHERE media_final < 7.0;

UPDATE tb_alunos SET media_final = 9.9 WHERE rm_aluno = 5;
