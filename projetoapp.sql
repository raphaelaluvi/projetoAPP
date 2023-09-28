create table if not exists descricaoprojetos(
projeto varchar (20) not null unique,
descricao text,
ods varchar (20),
palestra enum ('Sim', 'Não')
) default charset = utf8;

alter table descricaop
add column idprojeto int first;

alter table descricaop
add primary key (idprojeto);