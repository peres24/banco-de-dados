CREATE DATABASE IF NOT EXISTS sistema;
USE sistema;
CREATE TABLE IF NOT EXISTS empregado(
	id_empregado INT AUTO_INCREMENT PRIMARY KEY,
	ident VARCHAR(30) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    sexo CHAR(10) NOT NULL,
    endereco VARCHAR(100) NOT NULL UNIQUE,
    sal INT NOT NULL,
	data_nasc DATE NOT NULL,
    dep_num INT NOT NULL,
    supervisor VARCHAR(30)
);
CREATE TABLE IF NOT EXISTS departamento(
	id_departamento INT AUTO_INCREMENT NOT NULL,
	num INT NOT NULL,
    identgerente VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS projeto(
	id_projeto INT AUTO_INCREMENT NOT NULL,
	FOREIGN KEY (num) REFERENCES departamento(num),
    FOREIGN KEY (nome) REFERENCES empregado(nome),
    local_projeto VARCHAR(50),
    FOREIGN KEY (dep_num) REFERENCES empregado(dep_num)
);

CREATE TABLE IF NOT EXISTS trabalhando(
	FOREIGN KEY (id_projeto) REFERENCES projeto(id_projeto)
);
