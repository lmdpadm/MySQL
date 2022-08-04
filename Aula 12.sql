use cadastro;

select * from cursos;

select * from gafanhotos;

select * from cursos
where nome like "p%";

select * from cursos
where nome not like "%a%";

select * from cursos
where nome like "ph%p";

UPDATE `cadastro`.`cursos` SET `nome` = 'Photoshop' WHERE (`idcurso` = '3');

select * from cursos
where nome like "ph%p%";

select * from cursos
where nome like "ph%p_";

select * from cursos
where nome like "p__t%";

select distinct nacionalidade from gafanhotos
order by nacionalidade asc ;

select count(*) from cursos;

select count(*) from cursos where carga >'40';

select max(carga) from cursos;

select max(totaulas) from cursos where ano ='2016';

select carga from cursos;

select nome, min(carga) from cursos where ano = '2016';

select sum(totaulas) from cursos where ano = '2016';

select avg(totaulas) from cursos where ano = '2016';