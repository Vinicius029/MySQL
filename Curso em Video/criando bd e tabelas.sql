CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8
DEFAULT  COLLATE utf8_general_ci;


CREATE TABLE pessoas(
	id INT NOT NULL AUTO_INCREMENT,
	nome varchar(30) NOT NULL,
    nascimento DATE,
    sexo ENUM('M','F'),
    peso DECIMAL (5,2),
    nacionalidade VARCHAR(30) DEFAULT 'Brasil',
    PRIMARY KEY (id)
    
) DEFAULT CHARSET = utf8;



CREATE TABLE IF NOT EXISTS cursos(
	nome VARCHAR(30) NOT NULL UNIQUE,
    descricao TEXT,
    carga INT UNSIGNED,
    ano YEAR DEFAULT '2022'
) DEFAULT CHARSET = utf8;
