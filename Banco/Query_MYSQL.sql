CREATE DATABASE ticket

CREATE TABLE status_chamado (
	id int PRIMARY KEY,
	descricao varchar(200)
);

CREATE TABLE tipo (
	id int PRIMARY KEY,
	descricao varchar(200)
);

CREATE TABLE departamento (
	id int PRIMARY KEY,
	descricao varchar(250) not null
);

CREATE TABLE funcionario(
	id int PRIMARY KEY,
	nome varchar(100),
	data_nasc varchar(50),
	email varchar(50),
	telefone varchar(50),
	celular varchar(50),
	ramal varchar(50),
	id_departamento int,
	CONSTRAINT fk_id_departamento FOREIGN KEY (id_departamento) REFERENCES departamento(id)
);

CREATE TABLE chamado (
	id int PRIMARY KEY,
	id_responsavel int,
	id_solicitante int not null,
	data_inc date,
	data_alt date,
	data_prazo date,
	descricao varchar(255),
	observacao varchar(400),
	id_status int,
	id_tipo int,
	CONSTRAINT fk_id_status_chamado FOREIGN KEY (id_status) REFERENCES status_chamado (id),
	CONSTRAINT fk_id_tipo FOREIGN KEY (id_tipo) REFERENCES Tipo (id),
	CONSTRAINT fk_id_solicitante FOREIGN KEY (id_solicitante) REFERENCES funcionario(id),
	CONSTRAINT fk_id_responsavel FOREIGN KEY (id_responsavel) REFERENCES funcionario(id)
);

CREATE TABLE funcionarioxchamado (
	id int PRIMARY KEY,
	id_funcionario int,
	id_chamado int,
	CONSTRAINT fk_id_funcionario FOREIGN KEY (id_funcionario) REFERENCES funcionario(id),
	CONSTRAINT fk_id_chamado FOREIGN KEY (id_chamado) REFERENCES chamado (id)
)

