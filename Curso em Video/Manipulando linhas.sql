INSERT INTO cursos VALUES
('1','HTML','Curso de HTML5','40','37','2014'),
('2','Algoritmos','Logica de Programção','20','15','2015'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
('5','Jarva','Introdução a linguagem Java','10','29','2000'), 
('6','MYSQL','Banco de Dados MySQL','30','15','2016'),
('7','Word','Curso completo de Word','40','30','2016'),
('8','Sapateado','Danças Ritmicas','40','30','2018'),
('9','Cozinha Arabe','Aprenda a fazer Kibe','40','30','2018'),
('10','YouTuber','Gerar polêmica e ganhar inscrito','5','2','2018');

# ATUALIZA A LINHA 1
UPDATE cursos
SET nome = 'HTML 5'
WHERE idcurso = '1';

# ATULIZA A LINHA 4
UPDATE cursos
SET nome = 'PHP', ano = 2015
WHERE idcurso = '4';


UPDATE cursos
SET nome = 'Java', ano = 2015, carga = 40
WHERE idcurso = 5
LIMIT 1; # LIMIT LIMITA SOMENTE A UMA LINHA A ALTERAÇÃO


#--------------- DELETE ------------------

# EXCLUI A LINHA 8 DA TABELA
DELETE FROM cursos
WHERE idcurso = 8;

# EXCLUI A LINHA ONDE O CURSO É IGUAL A 2018
DELETE FROM cursos
WHERE ano = 2018;


#APAGA TODOS OS DADOS DA TABELA
TRUNCATE curso;

select * from cursos;