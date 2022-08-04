create table if not exists cursos(
nome varchar(30) not null unique,
descricao text,
carga  int unsigned,
totalaulas int unsigned,
ano year default '2016'
) default charset = utf8;

select * from cursos;

describe cursos;

alter table cursos
add column id int not null first;

alter table cursos
drop column id;

alter table cursos
add primary key (id);