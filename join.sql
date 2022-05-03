/*Referencia: https://forum.imasters.com.br/topic/556862-busca-com-multiplas-sele%C3%A7%C3%B5es/?do=findComment&comment=2223385*/
CREATE DATABASE imasters;
USE imasters;

CREATE TABLE girl(
	 id		INT (8) PRIMARY KEY AUTO_INCREMENT
	,nome	VARCHAR(250)
);
INSERT INTO gril(nome) VALUES ('Lindinha');
INSERT INTO gril(nome) VALUES ('Docinha');
INSERT INTO girl(nome) VALUES ('Florzinha');


CREATE TABLE color(
	 id		INT (8) PRIMARY KEY AUTO_INCREMENT
	,nome	VARCHAR(250)
);
INSERT INTO color(nome) VALUES ('Blue');
INSERT INTO color(nome) VALUES ('Green');
INSERT INTO color(nome) VALUES ('Red');

 
CREATE TABLE girl_color(
	  color_id	INT (8)
	 ,girl_id	INT (8)	 
);
INSERT INTO girl_color(girl_id, color_id) VALUES (1,1); 
INSERT INTO girl_color(girl_id, color_id) VALUES (2,2); 
INSERT INTO pgirl_color(girl_id, color_id) VALUES (2,3);
INSERT INTO girl_color(girl_id, color_id) VALUES (3,3);


SELECT
	 girl.nome
	,color.nome 	 
FROM 
girl_color
INNER JOIN pessoa ON(
		girl_color.girl_id = girl.id
)
INNER JOIN fruta ON(
		girl_color.color_id = color.id
)
ORDER BY girl.nome

/*
nome      nome     
--------  ---------
Lidinha   Blue
Docinho Green
Florzinha  Red
Pamela   Yellow    ( ͡° ͜ʖ ͡°) 
*/
