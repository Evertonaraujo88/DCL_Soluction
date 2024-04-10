USE ProducstAndColors;

INSERT INTO PRODUTOS(NOME_PROD, PRC_PROD)
VALUES 
('Monitor LCD Samsung 740N',750.00),
('Mouse Microsoft ',40.00),
('Notebook Sony Vaio',11320.34),
(NULL,392.99)

SELECT * FROM PRODUTOS;

INSERT INTO CORES(IDPRODUTO,NOME_COR,PRC_COR)
VALUES 
(1,'Preto',5),
(1,'Azul',10),
(2,'Amarelo',20),
(4,'Chumbo',3)

SELECT * FROM CORES;

