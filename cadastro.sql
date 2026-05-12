create database cadastro;
use cadastro;
create table cliente (
CPF VARCHAR(11) PRIMARY KEY not null,
primeiro_nome varchar(50) not null,
sobrenome varchar(50) not null,
idade int not null
);
select * from cliente;


