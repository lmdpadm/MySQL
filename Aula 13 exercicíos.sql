use cadastro;

select * from cursos;

select * from gafanhotos;

select avg(altura) from gafanhotos;

# 1 - Uma lista com a profissão dos gafanhotos e seus respectivos quantitativos.
select profissao, count(profissao) from gafanhotos
group by profissao
order by count(profissao) desc;

# 2 - Quantos gafanhotos homens e quantas mulheres nasceram após 01/Jan/2005?
select sexo, count(*) from gafanhotos
where nascimento >= '2005-01-01'
group by sexo;

# 3 - Uma lista com os gafanhotos que nasceram fora do Brasil, mostrando país de origem e o total de pessoas nascidas lá. 
#Só nos interessam os países que tiveram mais de três gafanhotos com essa nacionalidade
select nacionalidade, count(*) from gafanhotos
where nacionalidade != 'Brasil'
Group by nacionalidade
Having count(nacionalidade) >= 3
order by count(nacionalidade) desc;

# 4 - Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais de 100kg
#e que estão acima da média de altura de todos os cadastrados.
select altura, peso from gafanhotos
where peso >= '100'
group by altura desc
having altura > (select avg(altura) from gafanhotos);