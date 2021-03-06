# % SIGNIFICA, NADA OU ALGUMA COISA

# SELECIONA TODOS OS CURSOS QUE COMEÇA COM A LETRA "P"
SELECT * FROM cursos
WHERE nome LIKE 'P%';


# SELECIONA TODOS OS CURSOS QUE TERMINA COM A LETRA "L"
SELECT * FROM cursos
WHERE nome LIKE '%L';


# SELECIONA TODOS OS CURSOS QUE TENHA A LETRA "Y" EM QUALQUER LUGAR
SELECT * FROM cursos
WHERE nome LIKE '%Y%';

# SELECIONA TODOS OS CURSOS QUE NÃO TENHA A LETRA "A"
SELECT * FROM cursos
WHERE nome NOT LIKE '%A%';


# SELECIONA OS CURSOS QUE COMEÇA COM "PH" E TERMINA COM "P"
SELECT * FROM cursos
WHERE nome  LIKE 'PH%P';


# COMECE COM "PH" TERMINE COM "P" SEGUIDO DE ALGUMA COISA "_"
SELECT * FROM cursos
WHERE nome LIKE 'PH%P_';

# COMECE COM "P" TENHA UMA LETRA DEPOIS, E DEPOIS OUTRO "P"
SELECT * FROM cursos
WHERE nome  LIKE 'P_P%';

# QUE TENHA "MIGUEL" DEPOIS DE UM ESPAÇO
SELECT * FROM gafanhotos
WHERE nome LIKE '%_Miguel%';

#------------- DISTINGUINDO ----------

# DISTINCT ELE VAI MOSTRA TODAS CARGA HORARIOS DOS CURSOS
# A TABELA CURSOS TEM VARIOS CURSOS COM CARGA HORARIO DIFERENTE
# CURSO COM 40, 30, 15 ETC, ENTÃO O DISTINCT VAI MOSTRAR TODAS CARGA HORARIO
SELECT DISTINCT carga FROM cursos ORDER BY CARGA DESC;


# MOSTRA TODAS AS NACIONALIDADES DE GAFANHOTOS
SELECT DISTINCT nacionalidade FROM gafanhotos ORDER BY nacionalidade;


#--------- FUNÇÕES DE AGREGAÇÃO ---------
# CONTA QUANTOS CURSOS A TABELA CURSOS TEM
SELECT COUNT(*) FROM cursos;

# CONTA QUANTOS CURSOS COM A CARGA HORARIO ACIMA DE 30 TEM
SELECT COUNT(*) FROM cursos WHERE carga > 30;

# QUAL É A MAIOR CARGA
SELECT MAX(carga) FROM cursos;

# QUAL É A MENOR CARGA
SELECT min(carga) FROM cursos;

# O CURSO QUE TEVE A MAIOR QUANTIDADE DE AULAS DO ANO DE 2016
SELECT nome, MAX(totaulas) FROM cursos WHERE ano = 2016;

# SOMA A QUANTIDADE DE TOTAULAS DO ANO DE 2016
SELECT SUM(totaulas) FROM cursos WHERE ano = 2014;

# MEDIA DE TOTAULAS DO ANO DE 2016
SELECT AVG(totaulas) FROM cursos WHERE ano = 2014;

