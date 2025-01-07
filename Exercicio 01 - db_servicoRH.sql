CREATE DATABASE db_servicoRH;
USE db_servicoRH;
CREATE TABLE tb_colaboradores (
	id_colaborador BIGINT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    data_admissao DATE,
    cargo VARCHAR(255),
    salario DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (id_colaborador)
);

INSERT INTO tb_colaboradores(nome, data_admissao, cargo, salario)
VALUES("Sergio Garcia", "2024-10-23","Auxiliar de Escritório",1880.00);
INSERT INTO tb_colaboradores(nome, data_admissao, cargo, salario)
VALUES("Maria das Dores", "2024-02-10","Jovem Aprendiz",900.00);
INSERT INTO tb_colaboradores(nome, data_admissao, cargo, salario)
VALUES("Janaina Costa Barros", "2017-04-27","Analista de RH Pleno",2770.00);
INSERT INTO tb_colaboradores(nome, data_admissao, cargo, salario)
VALUES("Reinaldo Neto", "2019-01-11","Supervisor de RH",3440.00);
INSERT INTO tb_colaboradores(nome, data_admissao, cargo, salario)
VALUES("Julia Vieira", "2022-07-06","Gerente de RH",5120.00);
	
SELECT * FROM tb_colaboradores;
SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 1130.00 WHERE id_colaborador = 2;