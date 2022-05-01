CREATE TABLE gafanhoto_assiste_curso(
	id INT NOT NULL AUTO_INCREMENT,
    data date,
    idgafanhoto INT,
    idcurso INT,
    PRIMARY KEY (id),
    
    FOREIGN KEY (idgafanhoto) REFERENCES gafanhotos(id),
    FOREIGN KEY (idcurso) REFERENCES cursos(idcurso)
) DEFAULT CHARSET = utf8;

desc gafanhoto_assiste_curso;

INSERT INTO gafanhoto_assiste_curso VALUES
(DEFAULT, '2000-05-01','1','3'),
(DEFAULT, '1995-08-15','5','8');

SELECT * FROM gafanhoto_assiste_curso;

SELECT g.nome, c.nome FROM gafanhotos AS g INNER JOIN gafanhoto_assiste_curso AS a
ON g.id = a.idgafanhoto
JOIN cursos AS c
ON c.idcurso = a.idcurso;

SELECT g.nome, c.nome, a.data, c.ano FROM gafanhotos AS g INNER JOIN gafanhoto_assiste_curso AS a
ON g.id  = a.idgafanhoto
JOIN cursos AS c
ON c.idcurso = a.idcurso;


desc cursos;
desc gafanhotos;




