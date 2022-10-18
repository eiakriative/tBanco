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
	('Diego', 'Zagueiro', 2, '1991-04-22', '2022-03-01', 18, 55.0, 1.5, 1),
	('Yago', 'Lateral', 3, '1990-04-22', '2022-03-01', 16, 62.0, 1.2, 1),
	('Hugo', 'Lateral', 4, '1991-04-22', '2022-03-01', 18, 60.0, 1.7, 1),
	('Matheus', 'Volante', 5, '1992-04-22', '2022-03-01', 18, 60.0, 1.2, 1),
	('Kaio', 'Volante', 6, '1995-04-22', '2022-03-01', 16, 60.0, 1.6, 1),
	('Pedro', 'Meia', 7, '1994-04-22', '2022-03-01', 18, 60.0, 1.4, 1),
	('Lucas', 'Meia', 8, '1992-04-22', '2022-03-01', 17, 60.0, 1.5, 1),
	('Luciano', 'Atacante', 9, '1996-04-22', '2022-03-01', 18, 60.0, 1.8, 1),
	('Juan', 'Atacante', 10, '1997-04-22', '2022-03-01', 18, 60.0, 1.9, 1),
	('Marcos', 'Goleiro', 11, '2000-04-22', '2022-03-01', 16, 65.0, 1.3, 2),
	('Rafael', 'Zagueiro', 13,  '1993-02-21', '2022-03-01', 17, 53.0, 1.5, 2),
	('Fabio', 'Zagueiro', 12,  '1991-04-22', '2022-03-01', 18, 55.0, 1.5, 2),
	('Tiago', 'Lateral', 15, '1990-04-22', '2022-03-01', 16, 62.0, 1.2, 2),
	('Reinaldo', 'Lateral', 14, '1991-04-22', '2022-03-01', 18, 60.0, 1.7, 2),
	('Matheus', 'Volante', 16, '1992-04-22', '2022-03-01', 18, 60.0, 1.2, 2),
	('Jonas', 'Volante', 19, '1995-04-22', '2022-03-01', 16, 60.0, 1.6, 2),
	('Ricardo', 'Meia', 18, '1994-04-22', '2022-03-01', 18, 60.0, 1.4, 2),
	('Breno', 'Meia', 17, '1992-04-22', '2022-03-01', 17, 60.0, 1.5, 2),
	('Vinicius', 'Atacante', 20, '1996-04-22', '2022-03-01', 18, 60.0, 1.8, 2),
	('Bruno', 'Atacante', 21, '1997-04-22', '2022-03-01', 18, 60.0, 1.9, 2);

INSERT INTO Partida (codigoPartida, codigoClube1, codigoClube2) VALUES
	(1, 1, 2),
	(2, 3, 4),
	(3, 2, 3),
	(4, 4, 1),
	(5, 1, 3),
	(6, 4, 2);

INSERT INTO Estadio (codigoEstadio, codigoPartida, nome, cidade, estado) VALUES
	(1, 1, 'Estadio do Trieste', 'Curitiba', 'PR'),
	(2, 2, 'Estadio Durival Britto e Silva - Vila Capanema', 'Curitiba', 'PR'),
	(3, 3, 'Estadio Regional Willie Davids', 'Maringa', 'PR'),
	(4, 4, 'Estadio Germano Kruger', 'Ponta Grossa', 'PR'),
	(5, 5, 'Estadio Municipal Jacy Scaff - Estadio do cafe', 'Londrina', 'PR'),
	(6, 6, 'Estadio Os Pioneiros', 'Pato Branco', 'PR');

INSERT INTO Calendario_PartidaPorClube (FK_codigoPartida, FK_codigoClube) VALUES 
(1, 1);