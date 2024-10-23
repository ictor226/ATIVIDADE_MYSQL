atv 1
MariaDB [caramelo]> create table t_usuario (
    codigo integer,
	nome VARCHAR (100),
	cidade VARCHAR (100),
	estado VARCHAR (2),
	data_nacimento datetime,
	tipo VARCHAR(50));
	
	atv 2
	create table T_VIAGEM (
 data_viagem datEtime,
 motorista INTEGER,
 passageiro INTEGER,
 origem VARCHAR(100),
 destino VARCHAR(100));
 
 ATV 3 
 create table T_VEICULO (
 CODIGO INTEGER,
 MODELO VARCHAR (100),
 MARCA VARCHAR(50),
 ANO INTEGER,
 COR VARCHAR(50)
 );
 
 
 INSERT INTO t_usuario (nome, cidade, estado, data_nacimento, tipo)
VALUES
 ('Frederica Piragibe', 'Americana', 'SP', '1990-10-20', 'Motorista'),
 ('Gisela Campos', 'Campinas', 'SP', '1992-11-30', 'Passageiro'),
 ('Gláuber Moita', 'Americana', 'SP', '1985-08-05', 'Passageiro'),
 ('Gláuber Moita', 'Americana', 'SP', '1985-08-05', 'Passageiro'),
 ('Gustavo Vaz', 'São Paulo', 'SP', '1995-05-20', 'Passageiro'),
 ('Herberto Mantas', 'São Paulo', 'SP', '1989-01-21', 'Passageiro'),
 ('Ibijara Faria', 'São Paulo', 'SP', '1991-10-22', 'Passageiro'),
 ('Ibijara Menezes', 'Rio Claro', 'SP', '1993-05-10', 'Motorista'),
 ('Ilma Garcia', 'Campinas', 'SP', '1994-06-15', 'Motorista'),
 ('Ingrit Moreyra', 'Limeira', 'SP', '1991-01-20', 'Passageiro'),
 ('Ivete Amaro', 'Piracicaba', 'SP', '1990-02-18', 'Passageiro'),
 ('Jorge Malheiro', 'Americana', 'SP', '1992-05-07', 'Motorista');

 

INSERT INTO T_VEICULO (MODELO, MARCA, ANO, COR)
VALUES
 ('Gol', 'Volkswagen', 2018, 'Preto'),
 ('Sandero', 'Renault', 2017, 'Branco'),
 ('306', 'Peugeot', 2010, 'Vermelho'),
 ('Uno', 'Fiat', 2012, 'Preto'),
 ('Palio', 'Fiat', 2017, 'Preto'),
 ('Golf', 'Volkswagen', 2018, 'Prata'),
 ('Up', 'Volkswagen', 2018, 'Amarelo');


INSERT INTO T_VIAGEM (data_viagem, motorista, passageiro, origem, destino)
VALUES
 ('2018-10-30', 1, 2, 'Americana', 'São Carlos'),
 ('2018-10-29', 2, 5, 'Campinas', 'Rio Claro'),
 ('2018-10-29', 3, 2, 'São Paulo', 'Americana'),
 ('2018-10-30', 4, 3, 'Campinas', 'São Carlos'),
 ('2018-10-30', 5, 1, 'Americana', 'São Paulo'),
 ('2018-10-30', 6, 1, 'Sumaré', 'São Paulo'),
 ('2018-10-29', 7, 1, 'São Carlos', 'São Paulo'),
 ('2018-10-29', 8, 2, 'Rio Claro', 'Campinas'),
 ('2018-10-30', 9, 3, 'São Paulo', 'Americana'),
 ('2018-10-30', 10, 1, 'Americana', 'São Paulo');


Todas as atividades abaixo devem ser executadas utilizando a tabela T_USUARIO:


 3)SELECT * FROM t_usuario;


4)SELECT * FROM t_usuario WHERE cidade IN ('Limeira', 'Piracicaba');

5)SELECT * FROM t_usuario WHERE cidade = 'Campinas';

6)SELECT * FROM t_usuario WHERE nome = 'Ingrit Moreyra';

7)SELECT * FROM t_usuario WHERE YEAR(data_nacimento) > 1990;

8)SELECT * FROM t_usuario WHERE tipo = 'Motorista';

9)SELECT * FROM t_usuario WHERE tipo = 'Passageiro';

10)SELECT * FROM t_usuario WHERE cidade != 'Americana';

11)SELECT * FROM t_usuario WHERE estado != 'SP';

12)SELECT * FROM t_usuario WHERE cidade = 'Piracicaba' AND estado = 'SP';

13)SELECT * FROM t_usuario WHERE cidade = 'Americana' AND tipo = 'Passageiro';

14)SELECT * FROM t_usuario WHERE cidade = 'Americana' AND tipo = 'Motorista';

15)SELECT * FROM t_usuario WHERE cidade != 'Americana' AND tipo = 'Motorista';

16)UPDATE t_usuario SET nome = 'Ingrid Moreira' WHERE nome = 'Ingrit Moreyra';

17)DELETE FROM t_usuario WHERE nome = 'Jorge Malheiro';

18)DELETE FROM t_usuario WHERE nome = ' Ilma';

Todas as atividades abaixo devem ser executadas utilizando a tabela T_VEICULO: 

19)UPDATE T_VEICULO
SET MARCA = UPPER(MARCA);

20)UPDATE T_VEICULO
SET MODELO = CONCAT(UPPER(LEFT(MODELO, 1)), SUBSTRING(MODELO, 2));

22)SELECT * FROM T_VEICULO;

23)SELECT * FROM T_VEICULO WHERE MARCA = 'FIAT';

24)SELECT * FROM T_VEICULO WHERE MARCA = 'VOLKSWAGEN';

25)SELECT * FROM T_VEICULO WHERE ANO = 2018;

26)SELECT * FROM T_VEICULO WHERE ANO != 2018;

27)UPDATE T_VEICULO
SET COR = 'Branco'
WHERE MODELO = 'Up';


28)DELETE FROM T_VEICULO
WHERE MODELO = 'Golf';