SELECT nome, COUNT(carga) FROM cursos
GROUP BY carga
ORDER BY carga;


# AGRUPADO POR ANO, ONDE A QUANTIDADE DE CURSO SEJA MAIOR QUE 5 
SELECT ano, COUNT(*) FROM cursos
GROUP BY ano
HAVING COUNT(ano) > 5
ORDER BY ano desc;

# SELECIONA CURSOS COM TOTAULAS IGUAL OU MAIOR QUE 30, AGRUPADO POR ANO, E QUE QUANTIDADE DE CURSO POR ANO SEJA MENOR QUE 5
SELECT ano, COUNT(*) FROM cursos
WHERE totaulas >= 30
GROUP BY ano
HAVING COUNT(ano) < 5
ORDER BY ano desc;

# SELECIONA OS CURSOS DEPOIS DE 2014, AGRUPADO POR CARGA, E QUE A CARGA SEJA ACIMA DA MÉDIA
SELECT carga, COUNT(*) FROM cursos
WHERE ano > 2014
GROUP BY carga
HAVING carga > (SELECT AVG(carga) FROM cursos);

# AGRUPADO POR NOME, ONDE O NOME COMEÇA COM A LETRA A
SELECT nome, COUNT(nome) FROM gafanhotos
GROUP BY nome
HAVING nome LIKE 'a%';



SELECT AVG(carga) FROM cursos;