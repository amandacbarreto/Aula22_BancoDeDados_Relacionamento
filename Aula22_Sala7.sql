CREATE DATABASE Escola;

CREATE TABLE Instituicao (
	Id INT IDENTITY (1,3) PRIMARY KEY,
	Nome VARCHAR(100) NOT NULL,
	Endereco VARCHAR(200) NOT NULL,
	CNPJ INT NOT NULL
);

CREATE TABLE Aluno (
	Id INT IDENTITY (1,3) PRIMARY KEY,
	id_instituicao INT NOT NULL,
	Nome VARCHAR(20) NOT NULL,
	Sobrenome VARCHAR(20) NOT NULL,
	Matrícula INT NOT NULL

	CONSTRAINT FK_aluno_instituicao
	FOREIGN KEY (id_instituicao) REFERENCES instituicao(id)
);

