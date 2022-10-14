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

INSERT INTO Clube (codigoClube, codigoEstadio, nome, Jogos) VALUES
	(1, 1, 'Trieste FC', 1),
	(2, 2, 'SE Tanguá', 2),
	(3, 3, 'Pavão FC', 1),
	(4, 4, 'Futeba FC', 1);

INSERT INTO Jogador (nomeJogador, posicao, gols, datanascimento, datacontratacao, idade, peso, altura, codigoClube) VALUES
	('Joel', 'Goleiro', 0, '2000-04-22', '2022-03-01', 16, 65.0, 1.3, 1),
	('João', 'Zagueiro', 2, '1993-02-21', '2022-03-01', 17, 53.0, 1.5, 1),
	('Diego', 'Zagueiro', 3, '1991-04-22', '2022-03-01', 18, 55.0, 1.5, 1),
	('Yago', 'Lateral', 5, '1990-04-22', '2022-03-01', 16, 62.0, 1.2, 1),
	('Hugo', 'Lateral', 6, '1991-04-22', '2022-03-01', 18, 60.0, 1.7, 1),
	('Matheus', 'Volante', 30, '1992-04-22', '2022-03-01', 18, 60.0, 1.2, 1),
	('Kaio', 'Volante', 30, '1995-04-22', '2022-03-01', 16, 60.0, 1.6, 1),
	('Pedro', 'Meia', 30, '1994-04-22', '2022-03-01', 18, 60.0, 1.4, 1),
	('Lucas', 'Meia', 30, '1992-04-22', '2022-03-01', 17, 60.0, 1.5, 1),
	('Luciano', 'Atacante', 30, '1996-04-22', '2022-03-01', 18, 60.0, 1.8, 1),
	('Juan', 'Atacante', 30, '1997-04-22', '2022-03-01', 18, 60.0, 1.9, 1),
	('Marcos', 'Goleiro', 0, '2000-04-22', '2022-03-01', 16, 65.0, 1.3, 2),
	('Rafael', 'Zagueiro', 2, '1993-02-21', '2022-03-01', 17, 53.0, 1.5, 2),
	('Fabio', 'Zagueiro', 3, '1991-04-22', '2022-03-01', 18, 55.0, 1.5, 2),
	('Tiago', 'Lateral', 5, '1990-04-22', '2022-03-01', 16, 62.0, 1.2, 2),
	('Reinaldo', 'Lateral', 6, '1991-04-22', '2022-03-01', 18, 60.0, 1.7, 2),
	('Matheus', 'Volante', 30, '1992-04-22', '2022-03-01', 18, 60.0, 1.2, 2),
	('Jonas', 'Volante', 30, '1995-04-22', '2022-03-01', 16, 60.0, 1.6, 2),
	('Ricardo', 'Meia', 30, '1994-04-22', '2022-03-01', 18, 60.0, 1.4, 2),
	('Breno', 'Meia', 30, '1992-04-22', '2022-03-01', 17, 60.0, 1.5, 2),
	('Vinicius', 'Atacante', 30, '1996-04-22', '2022-03-01', 18, 60.0, 1.8, 2),
	('Bruno', 'Atacante', 30, '1997-04-22', '2022-03-01', 18, 60.0, 1.9, 2);
    
INSERT INTO Estadio (codigoEstadio, codigoClube, nome, cidade, estado) VALUES
	(1, 1, 'Estadio do Trieste', 'Curitiba', 'PR'),
	(2, 2, 'Estadio SE Trangua', 'Al. Tamandaré', 'PR'),
	(3, 3, 'Estadio RE', 'Foz do iguaçu', 'PR'),
	(4, 4, 'Estadio FE', 'Maringa', 'PR');

INSERT INTO Partida (codigoPartida, codigoClube1, codigoClube2) VALUES
	(1, 1, 2),
	(2, 3, 4);