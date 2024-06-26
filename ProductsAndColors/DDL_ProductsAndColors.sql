CREATE DATABASE ProducstAndColors

USE ProducstAndColors;

CREATE TABLE PRODUTOS(
	IDPRODUTO INT PRIMARY KEY IDENTITY,
	NOME_PROD VARCHAR(50),
	PRC_PROD DECIMAL(10, 2),
);

CREATE TABLE CORES(
	IDCOR INT PRIMARY KEY IDENTITY,
	IDPRODUTO INT FOREIGN KEY REFERENCES PRODUTOS(IDPRODUTO),
	NOME_COR VARCHAR(50),
	PRC_COR DECIMAL(10, 2),
);