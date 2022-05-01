ALTER TABLE gafanhotos ADD COLUMN cursopreferido INT;

# ADCIONA UMA CHAVE ESTRANGEIRA
ALTER TABLE gafanhotos
ADD FOREIGN KEY (cursopreferido)
REFERENCES cursos(idcurso);
DESC gafanhotos;


UPDATE gafanhotos SET cursopreferido = '5' WHERE id = 2;

# GAFANHOTOS QUE TENHA CURSO PREFERIDO
SELECT g.id, g.nome,c.idcurso, c.nome, c.ano FROM gafanhotos AS g INNER JOIN cursos AS c
ON c.idcurso = g.cursopreferido
ORDER BY c.nome;

# LEFT OUTER JOIN MOSTRA TODOS OS GAFANHOTOS MESMO NÃO TENDO RELAÇÃO
SELECT g.id, g.nome,c.idcurso, c.nome, c.ano FROM gafanhotos AS g LEFT OUTER JOIN cursos AS c
ON c.idcurso = g.cursopreferido;


SELECT * FROM cursos;
SELECT * FROM gafanhotos;