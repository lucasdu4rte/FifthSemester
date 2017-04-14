CREATE DATABASE ticket

USE ticket

CREATE TABLE chamado (
	id  not null AUTOINCREMENT,
	responsavel integer,
	solicitante not null integer,
	data_inc date,
	data_alt date,
	data_prazo date,
	descricao varchar(255),
	observacao varchar (400),
	id_status integer,
	id_tipo integer,
	PRIMARY KEY (id),
	CONSTRAINT fk_id_status FOREIGN KEY (id_status) REFERENCES Status (id),
	CONSTRAINT fk_id_tipo FOREIGN KEY (id_tipo) REFERENCES Tipo (id),
	CONSTRAINT fk_id_solicitante FOREIGN KEY (solicitante) REFERENCES funcionario (id),
	CONSTRAINT fk_id_responsavel FOREIGN KEY (responsavel) REFERENCES funcionario (id),
)

CREATE TABLE STATUS(
id int,
descricao varchar(200),
primary key(id)
)

CREATE TABLE tipo(
id int,
descricao varchar(200),
primary key(id)	
)

CREATE TABLE funcionario{
id int identity,
nome varchar(100),
data_nasc varchar(50),
salario float,
email varchar(50),
telefone varchar(50),
celular varchar(50),
ramal varchar(50),
departamento varchar(100),
primary key(id),
CONSTRAINT fk_id_departamento FOREIGN KEY (departamento) REFERENCES departamento (id)
}



