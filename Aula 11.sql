select * from gafanhotos;

use cadastro;

select nome, ano from cursos
order by ano, nome;

select nome, carga, ano from cursos
where ano = '2016'
order by idcurso desc;

select nome, carga, ano from cursos
where ano != '2016'
order by ano asc;

select nome, ano from cursos
where ano between 2014 and 2017
order by ano desc, nome;

select nome, descricao, ano from cursos
where ano in (2014, 2017, 2020)
order by ano asc, nome asc;

select * from cursos
where carga >= 35 and totaulas <= 30 and ano = 2015
order by nome desc;

select * from cursos
where carga = 40 or ano = 2015;