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

INSERT INTO Clube (codigoClube, nome) VALUES
	(1, 'Trieste FC'),
	(2, 'SE Tanguá'),
	(3, 'Pavão FC'),
	(4, 'Futeba FC');

INSERT INTO Jogador (nomeJogador, posicao, golsPorPartida, datanascimento, datacontratacao, idade, peso, altura, codigoClube) VALUES
	('Joel', 'Goleiro', 0, '2000-04-22', '2022-03-01', 16, 65.0, 1.3, 1),
	('João', 'Zagueiro', 1, '1993-02-21', '2022-03-01', 17, 53.0, 1.5, 1),
	('Yago', 'Lateral', 3, '1990-04-22', '2022-03-01', 16, 62.0, 1.2, 1),
	('Matheus', 'Volante', 5, '1992-04-22', '2022-03-01', 18, 60.0, 1.2, 1),
	('Lucas', 'Meia', 8, '1992-04-22', '2022-03-01', 17, 60.0, 1.5, 1),
	('Luciano', 'Atacante', 9, '1996-04-22', '2022-03-01', 18, 60.0, 1.8, 1),
	('Marcos', 'Goleiro', 11, '2000-04-22', '2022-03-01', 16, 65.0, 1.3, 2),
	('Bruno', 'Atacante', 21, '1997-04-22', '2022-03-01', 18, 60.0, 1.9, 2);
	
INSERT INTO Partida (codigoPartida, codigoEstadio, codigoClube1, codigoClube2) VALUES
	(1, 1, 1, 2),
	(2, 2, 3, 4),
	(3, 3, 2, 3),
	(4, 4, 4, 1),
	(5, 5, 1, 3),
	(6, 6, 4, 2);

INSERT INTO Estadio (codigoEstadio, codigoPartida, nome, cidade, estado) VALUES
	(1, 1, 'Estadio do Trieste', 'Curitiba', 'PR'),
	(2, 2, 'Estadio Durival Britto e Silva - Vila Capanema', 'Curitiba', 'PR'),
	(3, 3, 'Estadio Regional Willie Davids', 'Maringa', 'PR'),
	(4, 4, 'Estadio Germano Kruger', 'Ponta Grossa', 'PR'),
	(5, 5, 'Estadio Municipal Jacy Scaff - Estadio do cafe', 'Londrina', 'PR'),
	(6, 6, 'Estadio Os Pioneiros', 'Pato Branco', 'PR');

INSERT INTO Partida_golsJogador (codigoPartida, golsPorPartida, nomeJogador, codigoClube) VALUES
	(1, 0, 'Joel' , 1),
	(4, 3, 'Joel' , 1),
	(5, 5, 'Joel' , 1),
	(1, 1, 'Joao' , 1),
	(4, 0, 'Joao' , 1),
	(5, 1, 'Joao' , 1),
	(1, 2, 'Yago' , 1),
	(4, 2, 'Yago' , 1),
	(5, 3, 'Yago' , 1),
	(1, 1, 'Matheus' , 1),
	(4, 1, 'Matheus' , 1),
	(5, 1, 'Matheus' , 1),
	(1, 2, 'Lucas' , 1),
	(4, 1, 'Lucas' , 1),
	(5, 2, 'Lucas' , 1),
	(1, 3, 'Luciano' , 1),
	(4, 2, 'Luciano' , 1),
	(5, 1, 'Luciano' , 1),
	(1, 0, 'Marcos' , 1),
	(3, 0, 'marcos' , 1),
	(6, 0, 'Marcos' , 1),
	(1, 0, 'Bruno' , 1),
	(3, 0, 'Bruno' , 1),
	(6, 0, 'Bruno' , 1);


-- DROPar tabela se necessário
DROP TABLE Estadio;
DROP TABLE Jogador;
DROP TABLE Clube;
DROP TABLE Partida;
DROP TABLE Partida_golsJogador;
DROP TABLE PartidaPorClube;


-- Select das tabela se necessário
SELECT * FROM Clube;
SELECT * FROM Jogador;
SELECT * FROM Estadio;
SELECT * FROM Partida;
SELECT * FROM Partida_golsJogador;

-- caso deseje ordenar gols por partida em ordem decrescente. 
SELECT * FROM Partida_golsJogador ORDER BY golsPorPartida DESC;





