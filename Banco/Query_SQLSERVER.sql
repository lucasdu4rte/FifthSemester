CREATE DATABASE ticket

USE ticket

CREATE TABLE chamado (
	id int identity(1,1),
	responsavel integer,
	solicitante int not null,
	data_inc date,
	data_alt date,
	data_prazo date,
	descricao varchar(250),
	observacao varchar (400),
	id_status integer,
	id_tipo integer,
	PRIMARY KEY (id),
	CONSTRAINT fk_id_status FOREIGN KEY (id_status) REFERENCES Status (id),
	CONSTRAINT fk_id_tipo FOREIGN KEY (id_tipo) REFERENCES Tipo (id),
	CONSTRAINT fk_id_solicitante FOREIGN KEY (solicitante) REFERENCES funcionario (id),
	CONSTRAINT fk_id_responsavel FOREIGN KEY (responsavel) REFERENCES funcionario (id),
)

CREATE TABLE status(
id int,
descricao varchar(200),
primary key(id)
)

CREATE TABLE tipo(
id int,
descricao varchar(200),
primary key(id)	
)

CREATE TABLE funcionario(
id int identity,
nome varchar(100),
data_nasc varchar(50),
salario float,
email varchar(50),
telefone varchar(50),
celular varchar(50),
ramal varchar(50),
id_departamento int,
primary key(id),
CONSTRAINT fk_id_departamento FOREIGN KEY (id_departamento) REFERENCES departamento (id)
)

CREATE TABLE departamento (
	id int not null identity,
	Descricao  varchar(250)not null,
	PRIMARY KEY(id)
)
