DROP  DATABASE  IF  EXISTS CORONA_VIRUS;
CREATE DATABASE CORONA_VIRUS;
USE CORONA_VIRUS;

CREATE TABLE PESQUISADOR (
	ID_PESQUISADOR INT NOT NULL AUTO_INCREMENT,
    NOME VARCHAR(100),
    DATA_NASCIMENTO DATE,
    SEXO INT,
    CPF VARCHAR (11),
    REACAO_VACINA INT(5),
    INSTITUICAO VARCHAR(100),
    PRIMARY KEY (ID_PESQUISADOR)
);

CREATE TABLE PESSOA (
	ID_PESSOA INT NOT NULL AUTO_INCREMENT,
    NOME VARCHAR(100),
    DATA_NASCIMENTO DATE,
    SEXO INT,
    CPF VARCHAR(11),
    REACAO_VACINA INT(5),
    VOLUNTARIO BOOLEAN,
    PRIMARY KEY (ID_PESSOA)
);

CREATE TABLE VACINA (
	ID_VACINA INT NOT NULL AUTO_INCREMENT,
    ID_PESQUISADOR INT NOT NULL,
    PAIS VARCHAR(45),
    ESTAGIO_PESQUISA ENUM('INICIAL', 'TESTES', 'APLICAÇÃO EM MASSA'),
    DATA_INICIO_PESQUISA DATE,
	PRIMARY KEY (ID_VACINA),
    FOREIGN KEY (ID_PESQUISADOR) REFERENCES PESQUISADOR (ID_PESQUISADOR)
);