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

CREATE TABLE Clube (
  codigoClube INTEGER NOT NULL,
  nome varchar(100) NOT NULL,
  PRIMARY KEY (codigoClube)
);

CREATE TABLE Calendario_PartidaPorClube(
  FK_codigoClube INTEGER NOT NULL,
  FK_codigoPartida INTEGER NOT NULL,
  FOREIGN KEY (FK_codigoClube) REFERENCES Clube (codigoClube),
  FOREIGN KEY (FK_codigoPartida) REFERENCES Partida (codigoPartida)
  
);

CREATE TABLE Jogador (
  nomeJogador varchar(255) NOT NULL,
  codigoClube INTEGER NOT NULL,
  golsPorPartida INTEGER NOT NULL UNIQUE,
  posicao varchar(50) NOT NULL,
  datanascimento DATE NOT NULL,
  datacontratacao DATE NOT NULL,
  idade INTEGER NOT NULL,
  peso FLOAT NOT NULL,
  altura FLOAT NOT NULL,
  PRIMARY KEY (nomeJogador, codigoClube, golsPorPartida),
  FOREIGN KEY (codigoClube) REFERENCES Clube (codigoClube)
);

CREATE TABLE Estadio (
  codigoEstadio INTEGER NOT NULL,
  codigoPartida INTEGER NOT NULL,
  nome VARCHAR(255) NOT null,
  cidade VARCHAR(255) NOT NULL,
  estado char(2) NOT NULL,
  PRIMARY KEY (codigoEstadio),
  FOREIGN KEY (codigoPartida) REFERENCES Partida (codigoPartida)
);


CREATE TABLE Partida (
  codigoPartida INTEGER NOT NULL,
  codigoClube1 INTEGER NOT NULL, 
  codigoClube2 INTEGER NOT NULL,
  PRIMARY KEY (codigoPartida),
  FOREIGN KEY (codigoClube1) REFERENCES Clube (codigoClube),
  FOREIGN KEY (codigoClube2) REFERENCES Clube (codigoClube)
);

CREATE TABLE Partida_golsJogador(
  codigoPartida INTEGER NOT NULL,
  golsPorPartida INTEGER NOT NULL UNIQUE,
  nomeJogador varchar(255) NOT NULL,
  codigoClube INTEGER NOT NULL,
  PRIMARY KEY (codigoPartida, golsPorPartida, nomeJogador, codigoClube),
  FOREIGN KEY (codigoPartida) REFERENCES Partida (codigoPartida),
  FOREIGN KEY (golsPorPartida) REFERENCES Jogador (golsPorPartida),
  FOREIGN KEY (nomeJogador) REFERENCES Jogador (nomeJogador),
  FOREIGN KEY (codigoClube) REFERENCES Clube (codigoClube)
);

DROP TABLE Estadio;
DROP TABLE Jogador;
DROP TABLE Clube;
DROP TABLE Partida;
DROP TABLE Calendario_PartidaPorClube;
DROP TABLE Partida_golsJogador;
DROP TABLE PartidaPorClube;


SELECT * FROM Clube;
SELECT * FROM Jogador;
SELECT * FROM Estadio;
SELECT * FROM Partida;
SELECT * FROM Calendario_PartidaPorClube;
SELECT * FROM Partida_golsJogador;





