-- Active: 1665149632052@@127.0.0.1@3306@Projeto_trabalho_campfutebol
/*
#########################################################
## ALUNO: André Luiz Homan Kanashiro                   ##
## SEDE / Curso: BSI - Osório | Noite                  ##
## DISCIPLINA: BANCO DE DADOS                          ##
## PROFESSORA: Osmary Camila Bortoncello Glober (Mary) ##
## TRABALHO / PROJETO                                  ##
#########################################################
*/

CREATE DATABASE Projeto_trabalho_campfutebol;
USE Projeto_trabalho_campfutebol;

CREATE TABLE Clube (
  codigoClube INTEGER NOT NULL AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  PRIMARY KEY (codigoClube)
);

CREATE TABLE Jogador (
  nomeJogador varchar(255) NOT NULL,
  codigoClube INTEGER NOT NULL,
  posicao varchar(50) NOT NULL,
  datanascimento DATETIME NOT NULL,
  datacontratacao DATETIME NOT NULL,
  idade INTEGER NOT NULL,
  peso DOUBLE NOT NULL,
  altura DOUBLE NOT NULL,
  PRIMARY KEY (nomeJogador, codigoClube),
  FOREIGN KEY (codigoClube) REFERENCES Clube (codigoClube)
);

CREATE TABLE Estadio (
  codigoEstadio INTEGER NOT NULL AUTO_INCREMENT,
  codigoPartida INTEGER NOT NULL,
  nome VARCHAR(255) NOT NULL,
  capacidade DOUBLE NOT NULL,
  cidade VARCHAR(255) NOT NULL,
  estado char(2) NOT NULL,
  PRIMARY KEY (codigoEstadio)
);

CREATE TABLE Partida (
  codigoPartida INTEGER NOT NULL AUTO_INCREMENT,
  codigoEstadio INTEGER NOT NULL,
  codigoClube1 INTEGER NOT NULL, 
  codigoClube2 INTEGER NOT NULL,
  PRIMARY KEY (codigoPartida),
  FOREIGN KEY (codigoClube1) REFERENCES Clube (codigoClube),
  FOREIGN KEY (codigoClube2) REFERENCES Clube (codigoClube),
  FOREIGN KEY (codigoEstadio) REFERENCES Estadio (codigoEstadio)
);

CREATE TABLE Partida_golsJogador( 
  codigoPartida INTEGER NOT NULL,
  golsPorPartida INTEGER NOT NULL,
  nomeJogador VARCHAR(255) NOT NULL,
  codigoClube INTEGER NOT NULL,
  FOREIGN KEY (codigoPartida) REFERENCES Partida(codigoPartida),
  -- FOREIGN KEY (golsPorPartida) REFERENCES Jogador(golsPorPartida),
  -- CONSTRAINT FK_golsPorPartida FOREIGN KEY (golsPorPartida) REFERENCES Jogador(golsPorPartida),
  FOREIGN KEY (nomeJogador) REFERENCES Jogador(nomeJogador),
  FOREIGN KEY (codigoClube) REFERENCES Clube(codigoClube)
);

-- DROPar tabela se necessário
DROP TABLE Estadio;
DROP TABLE Jogador;
DROP TABLE Clube;
DROP TABLE Partida;
DROP TABLE Partida_golsJogador;


-- Select das tabela se necessário
SELECT * FROM Clube;
SELECT * FROM Jogador;
SELECT * FROM Estadio;
SELECT * FROM Partida;
SELECT * FROM Partida_golsJogador;

-- caso deseje ordenar gols por partida em ordem decrescente. 
SELECT * FROM Partida_golsJogador ORDER BY golsPorPartida DESC;





