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
  codigoEstadio INTEGER NOT NULL,
  nome varchar(100) NOT NULL,
  Jogos INTEGER NOT NULL,
  PRIMARY KEY (codigoClube)
);

CREATE TABLE Jogador (
  nomeJogador varchar(255) NOT NULL,
  posicao varchar(50) NOT NULL,
  gols INTEGER DEFAULT NULL,  
  datanascimento DATE NOT NULL,
  datacontratacao DATE NOT NULL,
  idade INTEGER NOT NULL,
  peso FLOAT NOT NULL,
  altura FLOAT NOT NULL,
  codigoClube INTEGER NOT NULL,
  PRIMARY KEY (nomeJogador, codigoClube),
  KEY FK_Jogador (codigoClube),
  CONSTRAINT FK_Jogador FOREIGN KEY (codigoClube) REFERENCES Clube (codigoClube)
);

CREATE TABLE Estadio (
  codigoEstadio INTEGER NOT NULL,
  codigoClube INTEGER NOT NULL,
  nome VARCHAR(255) NOT null,
  cidade VARCHAR(255) NOT NULL,
  estado char(2) NOT NULL,
  PRIMARY KEY (codigoEstadio),
  KEY FK_Estadio (codigoClube),
  CONSTRAINT FK_Estadio FOREIGN KEY (codigoClube) REFERENCES Clube (codigoClube)
);
DROP TABLE Estadio;
DROP TABLE Jogador;
DROP TABLE Clube;
DROP TABLE Partida;


SELECT * FROM Clube;
SELECT * FROM Estadio;
SELECT * FROM Jogador;
SELECT * FROM Partida;






