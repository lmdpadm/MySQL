use cadastro;

describe gafanhotos;

select * from gafanhotos;

alter table gafanhotos add column cursopreferido int;

alter table gafanhotos 
add foreign key (cursopreferido)
references cursos(idcurso);

update gafanhotos set cursopreferido = '6' where id = '1';

select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano			#Selecionando as colunas que desejo visualizado, nomeando a tabela seguido de ponto(.) e o nome da coluna
from gafanhotos inner join cursos			#conectando os dados entre as tabelas, utilizando o operador "inner join"
on cursos.idcurso = gafanhotos.cursopreferido			#conectando a chave primária e chave estrangeira, para que o resultado venha filtrado corretamente
order by gafanhotos.nome asc;

select g.nome, g.cursopreferido, c.nome, c.ano
from gafanhotos as g inner join cursos as c		#os nomes das tabelas podem ser abreviados utilizando o operador "as"
on c.idcurso = g.cursopreferido
order by g.nome asc;

select g.nome, g.cursopreferido, c.nome, c.ano
from gafanhotos as g left outer join cursos as c		#left outer join irá preferenciar a tabela da esquerda (gafanhotos), right outer join irá preferenciar a tabela da direita (cursos)
on c.idcurso = g.cursopreferido;

