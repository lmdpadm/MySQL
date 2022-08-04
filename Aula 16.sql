use cadastro;

describe gac;

create table `gac` (
`id` int not null auto_increment,
`data` date,
`idgafanhoto` int,
`idcurso` int,
primary key (id),
foreign key (idgafanhoto) references gafanhotos(id), #PRIMEIRA CHAVE ESTRANGEIRA, CONECTANDO COM O ID DOS GAFANHOTOS
foreign key (idcurso) references cursos(idcurso) #SEGUNDA CHAVE ESTRANGEIRA, CONECTANDO COM ID DOS CURSOS
) default charset = utf8;

#ALIMENTANDO DADOS
insert into gac values
(default, '2014-03-01', '1', '2');

select * from gac;

#CONECTANDO O "ID DE GAFANHOTOS" COM O "ID DE GAC"
select * from gafanhotos g
join gac a 
on g.id = a.idgafanhoto;

# CONECTANDO AMBAS AS TABELAS, UTILIZANDO "ID DE GAFANHOTOS" COM O "ID DE GAC"
select g.id, g.nome, a.idgafanhoto, idcurso from gafanhotos g
join gac a
on g.id = a.idgafanhoto
order by g.nome;

# Conectando dados entre três tabelas, UTILIZANDO TODOS OS ID'S
select g.nome, c.nome from gafanhotos g
join gac a				#Join primera tablea
on g.id = a.idgafanhoto
join cursos c			#Join segunda tablea
on c.idcurso = a.idcurso
order by g.nome;