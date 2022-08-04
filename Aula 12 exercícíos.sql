select * from gafanhotos;

# 1 - Uma lista com o nome de todos os gafanhotos
select nome from gafanhotos;

# 2 - Uma lista com os dados de todos aqueles que nasceram entre 01/01/2000 e 31/12/2015 
select * from gafanhotos
where nascimento >= '2000-01-01' and nascimento <= '2015-12-31'
order by nascimento asc;

# 3 - Uma lista com o nome de todos os homens que trabalham como programadores
select nome, profissao from gafanhotos
where profissao = 'programador' and sexo = 'm'
order by nome asc;

# 4 - Uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciando com a letra J
select * from gafanhotos
where sexo = 'f' and nacionalidade = 'brasil' and nome like 'J%'
order by nome asc;

# 5 - Uma lista com o nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100KG
select nome, nacionalidade from gafanhotos
where nome like '%silva%' and sexo = 'm' and nacionalidade != 'brasil' and peso < 100;

# 6 - Qual é a maior altura entre gafanhotos homens que moram no Brasil?
select max(altura) from gafanhotos
where sexo = 'm' and nacionalidade = 'brasil';

# 7 - Qual é a média de peso dos gafanhotos cadastrados?
select avg(peso) from gafanhotos;

# 8 - Qual é o menor peso entre gafanhotos mulheres que nasceram fora do Brasil e entre 01/01/1990 e 31/12/2000?
select min(peso) from gafanhotos
where sexo = 'f' and nacionalidade != 'brasil' and nascimento >= '1990-01-01' <= '2000-12-31';

# 9 - Quantas gafanhotas mulheres tem mais de 1,90de altura?
select count(*) from gafanhotos
where sexo = 'f' and altura > '1.90';