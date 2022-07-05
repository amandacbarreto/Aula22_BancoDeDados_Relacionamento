create table instituicao(
	id int identity (1,3) primary key,
	nome varchar (20) not null,
	endereco varchar (100) not null,
	cnpj int,
);
create table aluno(
	id int identity (1,3) primary key,
	id_instituicao int not null,
	nome varchar (20) not null,
	sobrenome varchar (20) not null,
	matricula int not null,

	constraint FK_aluno_instituicao
	foreign key (id_instituicao) references instituicao(id)
);