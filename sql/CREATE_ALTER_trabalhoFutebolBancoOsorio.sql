-- Active: 1665149632052@@127.0.0.1@3306@Projeto_trabalho_campfutebol
/*
#########################################################
## ALUNO: André Luiz Homan Kanashiro                   ##
## SEDE / Curso: BSI - Osório | Noite                  ##
## DISCIPLINA: BANCO DE DADOS                          ##
## PROFESSORA: Osmary Camila Bortoncello Glober (Mary) ##
## TRABALHO / PROJETO - 1 BIMESTRE                     ##
#########################################################
*/

CREATE DATABASE Projeto_trabalho_campfutebol;

USE Projeto_trabalho_campfutebol;

CREATE TABLE Jogador (
  nomeJogador varchar(255) NOT NULL,
  posicao varchar(50) NOT NULL,
  gols int(11) DEFAULT NULL,  
  datanascimento DATE NOT NULL,
  datacontratacao DATE NOT NULL,
  idade int NOT NULL,
  peso FLOAT NOT NULL,
  altura FLOAT NOT NULL,
  codigoClube int NOT NULL,
  PRIMARY KEY (nomeJogador, codigoClube),
  KEY FK_Jogador (codigoClube),
  CONSTRAINT FK_Jogador FOREIGN KEY (codigoClube) REFERENCES Clube (codigoClube)
);


CREATE TABLE Clube (
  codigoClube int NOT NULL AUTO_INCREMENT,
  codigoEstadio INT NOT NULL,
  nome varchar(100) NOT NULL,
  Jogos int(11) NOT NULL,
  PRIMARY KEY (codigoClube)
);

CREATE TABLE Estadio (
  codigoEstadio INT NOT NULL,
  codigoClube int NOT NULL,
  nome VARCHAR(255) NOT null,
  cidade VARCHAR(255) NOT NULL,
  estado char(2) NOT NULL,
  PRIMARY KEY (codigoEstadio),
  KEY FK_Estadio (codigoClube),
  CONSTRAINT FK_Estadio FOREIGN KEY (codigoClube) REFERENCES Clube (codigoClube)
);

DROP TABLE Clube;
DROP TABLE Estadio;
DROP TABLE Jogador;

SELECT * FROM Clube;
SELECT * FROM Estadio;
SELECT * FROM Jogador;