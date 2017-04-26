CREATE DATABASE ticket

use ticket

CREATE TABLE status_chamado (
	id int PRIMARY KEY identity(1,1),
	descricao varchar(200) unique
);

CREATE TABLE tipo (
	id int PRIMARY KEY identity(1,1),
	descricao varchar(200) unique
);

CREATE TABLE departamento (
	id int PRIMARY KEY identity(1,1),
	descricao varchar(250) not null unique,
	status char(1)
);

CREATE TABLE funcionario(
	id int PRIMARY KEY identity(1,1),
	data_inc date,
	data_alt date,
	nome varchar(100),
	data_nasc varchar(50),
	email varchar(50),
	telefone varchar(50),
	celular varchar(50),
	ramal varchar(50),
	id_departamento int,
	status char(1),
	CONSTRAINT fk_id_departamento FOREIGN KEY (id_departamento) REFERENCES departamento(id)
);


CREATE TABLE chamado (
	id int PRIMARY KEY identity(1,1),
	id_responsavel int NULL,
	id_solicitante int NULL,
	data_inc date NULL,
	data_alt date NULL,
	data_prazo date NULL,
	descricao varchar(250) NULL,
	observacao varchar(1000) NULL,
	id_status int NULL,
	id_tipo int NULL,
	status char(1),
	CONSTRAINT fk_id_status_chamado FOREIGN KEY (id_status) REFERENCES status_chamado (id),
	CONSTRAINT fk_id_tipo FOREIGN KEY (id_tipo) REFERENCES tipo (id),
	CONSTRAINT fk_id_solicitante FOREIGN KEY (id_solicitante) REFERENCES funcionario(id),
	CONSTRAINT fk_id_responsavel FOREIGN KEY (id_responsavel) REFERENCES funcionario(id)
);

CREATE TABLE funcionarioxchamado (
	id int PRIMARY KEY identity(1,1),
	id_funcionario int,
	id_chamado int,
	CONSTRAINT fk_id_funcionario FOREIGN KEY (id_funcionario) REFERENCES funcionario(id),
	CONSTRAINT fk_id_chamado FOREIGN KEY (id_chamado) REFERENCES chamado (id)
);

INSERT INTO status_chamado (descricao) VALUES ('Em atendimento');
INSERT INTO status_chamado (descricao) VALUES ('Cancelado');
INSERT INTO status_chamado (descricao) VALUES ('Concluído');

INSERT INTO tipo (descricao) VALUES ('Hardware');
INSERT INTO tipo (descricao) VALUES ('Software');
INSERT INTO tipo (descricao) VALUES ('Rede');
INSERT INTO tipo (descricao) VALUES ('Impressora');
INSERT INTO tipo (descricao) VALUES ('Outros');

INSERT INTO departamento (descricao) VALUES('TI');
INSERT INTO departamento (descricao) VALUES('Compras');
INSERT INTO departamento (descricao) VALUES('Financeiro');
INSERT INTO departamento (descricao) VALUES('Recursos Humanos');
INSERT INTO departamento (descricao) VALUES('Departamento Pessoal');

INSERT INTO funcionario (nome, data_nasc, email, telefone, celular, ramal, id_departamento, status) VALUES('Lucas', '11/12/1995', 'lucas@email.com', '19 33778032', null, '8033', 1, 's');
INSERT INTO funcionario (nome, data_nasc, email, telefone, celular, ramal, id_departamento, status) VALUES('Daniel', '28/11/1995', 'daniel@email.com', '19 33778032', null, '8034', 1, 's');