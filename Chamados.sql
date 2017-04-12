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
	CONSTRAINT fk_id_solicitante FOREIGN KEY (solicitante) REFERENCES Usuario (id),
	CONSTRAINT fk_id_responsavel FOREIGN KEY (responsavel) REFERENCES Usuario (id),
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
	
