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

INSERT INTO Clube (nome) VALUES
	('Trieste FC'),
	('SE Tanguá'),
	('Pavão FC'),
	('Futeba FC');

INSERT INTO Jogador (nomeJogador, posicao, datanascimento, datacontratacao, idade, peso, altura, codigoClube) VALUES
	('Lucas', 'Meia', '1992-04-22', '2022-03-01', 17, 60.0, 1.5, 1),
	('Luciano', 'Atacante', '1996-04-22', '2022-03-01', 18, 60.0, 1.8, 1),
	('Marcos', 'Goleiro', '2000-04-22', '2022-03-01', 16, 65.0, 1.3, 2),
	('Bruno', 'Atacante', '1997-04-22', '2022-03-01', 18, 60.0, 1.9, 2),
	('Alfredo', 'Goleiro', '2000-04-22', '2022-03-01', 16, 65.0, 1.3, 3),
	('Jonas', 'Atacante', '1997-04-22', '2022-03-01', 17, 60.0, 1.9, 3),
	('Hugo', 'Goleiro', '2000-04-22', '2022-03-01', 16, 65.0, 1.3, 4),
	('Igor', 'Atacante', '1997-04-22', '2022-03-01', 18, 60.0, 1.9, 4);

INSERT INTO Estadio (codigoEstadio, codigoPartida, nome, capacidade, cidade, estado) VALUES
	(1, 1, 'Estadio Francisco Muraro', 3.000, 'Curitiba', 'PR'),
	(2, 2, 'Estadio Durival Britto e Silva - Vila Capanema', 20.083, 'Curitiba', 'PR'),
	(3, 3, 'Estadio Regional Willie Davids', 20.000, 'Maringa', 'PR'),
	(4, 4, 'Estadio Germano Kruger', 10.632, 'Ponta Grossa', 'PR'),
	(5, 5, 'Estadio Municipal Jacy Scaff - Estadio do cafe', 36.056, 'Londrina', 'PR'),
	(6, 6, 'Estadio Os Pioneiros', 1.500, 'Pato Branco', 'PR');

INSERT INTO Partida (codigoPartida, codigoEstadio, codigoClube1, codigoClube2) VALUES
	(1, 1, 1, 2),
	(2, 2, 3, 4),
	(3, 3, 2, 3),
	(4, 4, 4, 1),
	(5, 5, 1, 3),
	(6, 6, 4, 2);

INSERT INTO Partida_golsJogador (codigoPartida, golsPorPartida, nomeJogador, codigoClube) VALUES
	(1, 2, 'Lucas', 1),
	(4, 1, 'Lucas', 1),
	(5, 3, 'Lucas', 1),
	(1, 1, 'Luciano', 1),
	(4, 1, 'Luciano', 1),
	(5, 1, 'Luciano', 1),
	(1, 0, 'Marcos', 2),
	(3, 0, 'Marcos', 2),
	(6, 0, 'Marcos', 2),
	(1, 2, 'Bruno', 2),
	(3, 1, 'Bruno', 2),
	(6, 2, 'Bruno', 2),
	(2, 0, 'Alfredo', 3),
	(3, 0, 'Alfredo', 3),
	(5, 0, 'Alfredo', 3),
	(2, 0, 'Jonas', 3),
	(3, 0, 'Jonas', 3),
	(5, 0, 'Jonas', 3),
	(2, 0, 'Hugo', 4),
	(4, 0, 'Hugo', 4),
	(6, 0, 'Hugo', 4),
	(2, 0, 'Igor', 4),
	(4, 0, 'Igor', 4),
	(6, 0, 'Igor', 4);

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





