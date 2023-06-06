create database concurso_publico;
use concurso_publico;

create table concursos (
id int,
data date,
nome varchar(45),
primary key (id)
);

create table cargos (
id int,
nome varchar(45),
primary key (id)
);

create table candidatos (
id int,
nome varchar(45),
sobrenome varchar(45),
cpf char(11),
telefone char(15),
email varchar(60),
primary key (id)
);

create table inscricao (
codigo_inscricao varchar(8),
id_cargo int,
id_concurso int,
id_candidato int,
primary key (codigo_inscricao),
foreign key (id_cargo) references cargos (id),
foreign key (id_concurso) references concursos (id),
foreign key (id_candidato) references candidatos (id)
);

insert into cargos 
values 
(id,nome),
(1,'policial');

insert into concursos
values 
(id,data,nome),
(2,'2023-06-16','alfacon');

insert into candidatos
values
('3','pedro','silva','123456798','24999999','pedroalmodovar@gmail.com');

insert into inscricao
values
('001','1','2','3');








drop table concursos;
drop table cargos;
drop table candidatos;

