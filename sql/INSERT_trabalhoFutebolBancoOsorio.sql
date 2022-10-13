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


INSERT INTO Jogador (nomeJogador, posicao, gols, datanascimento, datacontratacao, idade, peso, altura, codigoClube) VALUES
	('Joel', 'Meia', 30, '2022-04-22', '2022-03-01', 18, 60.0, 1.3, 1),
    ('Pedro', 'Atacante', 12, '2022-03-07', '2022-03-01', 16, 55.0, 1.2, 2);
    

INSERT INTO Estadio (codigoEstadio, codigoClube, nome, cidade, estado) VALUES
	(1, 1, 'Estadio do Trieste', 'Curitiba', 'PR'),
	(2, 2, 'Estadio SE Trangua', 'Al. Tamandaré', 'PR');
	
INSERT INTO Clube (codigoEstadio, codigoClube, nome, Jogos) VALUES
	(1, 1, 'Trieste FC', 1),
	(1, 2, 'SE Tanguá', 2);
