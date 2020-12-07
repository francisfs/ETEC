-- 1)	Insira os dados de 2 (dois) Síndicos.
insert into sindico 
(nome_sind, endereco_sind, telefone_sind) values
('Carlos Alberto de Nobrega', 'Rua maria amalia nº 200 - jardim santa monica - São Paulo - SP', '11945221597'),
('Francisco Soares de Souza', 'Rua avelino chaves nº 590 - jardim dos pinheiros - Caieiras - SP','11945272115');

-- 2)	Insira os dados de 10 (dez) Proprietários.
insert into proprietario 
(rg_proprietario, nome, telefone_prop, email) values
('42454779','Ana Paula dos Santos', '11957915231','ana@gmail.com'),
('54724578','Juliana fernandes','11957234567','julia@gmai.com'),
('35157987','Pedro Araujo','11969741224','pedro@yahoo.com.br'),
('12485132','Alvarenga Peixoto','1192134469','peixoto@gmail.com'),
('12457978','Fernado da Silva','1197541225','fernando@ig.com.br'),
('35835112','Silvio Santos','1197312141','silvio@ig.com.br'),
('68453385','Maria Aparecida','1197321154','maria@ig.com.br'),
('11578968','roberto Fernandes','1191241551','roberto@terra.com.br'),
('15778968','Tomas Fernandes','1191241551','alice@terra.com.br'),
('16578968','Carla de Souza','1191241551','alice@terra.com.br');

-- 3)	Insira os dados de 2 (dois) Condomínios definido um Síndico para cada um.
insert into condominio 
(nome_cond, endereco, matricula_sind) values
('condominio das flores','Av. Turistica nº 5970','1'),
('condominio das arvores','Rua Pedro alvares nº 2415','2');

-- 4)	Insira os dados de 5 (cinco) Apartamentos para cada Condomínio com uma cobertura em cada um.
insert into apartamento 
(tipo_apto, codigo_cond) values
('cobertura','1'),
('comum','1'),
('comum','1'),
('comum','1'),
('comum','1'),
('cobertura','2'),
('comum','2'),
('comum','2'),
('comum','2'),
('comum','2');
 
-- 5)	Insira os dados de Garagem sabendo-se que um dos Condomínios possui duas vagas por Apartamento, enquanto o outro só uma e que somente quem mora no Apartamento do tipo cobertura, possui vaga coberta.
insert into garagem 
(tipo_garagem, num_apto_id) values
 ('coberta',1),
 ('coberta',1),
 ('aberta',2),
 ('aberta',2),
 ('aberta',3),
 ('coberta',3),
 ('coberta',4),
 ('aberta',4),
 ('aberta',5),
 ('aberta',5),
 ('coberta',6),
 ('coberta',7),
 ('aberta',8),
 ('aberta',9),
 ('aberta',10);
-- 6)	Insira os registros necessários para distribuir os Apartamentos entre os Proprietários, sabendo-se que:
-- a)	nenhum Proprietário pode ficar sem Apartamento, 
-- b)	um Proprietário pode possuir mais de um Apartamento e 
-- c)	um Apartamento por ter mais de um Proprietário. 

 insert into proprietario_apartamento 
 (num_apto_id,proprietario_id) values
 ('1','10'),
 ('2','10'),
 ('3','1'),
 ('3','1'),
 ('4','2'),
 ('5','3'),
 ('6','4'),
 ('7','8'),
 ('8','9'),
 ('9','5'),
 ('10','6');

 
 
 
 
 
 
 
 






