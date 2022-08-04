update cursos
set nome = 'HTML5'
where id = '1';

update cursos
set nome = 'PHP', ano = '2015'
where id = '4';

update cursos
set nome = 'Java', ano = '2015', carga ='40'
where id = '5'
limit 1;

delete from cursos
where id = '8';

delete from cursos
where ano = '2018'
limit 2;

select * from cursos