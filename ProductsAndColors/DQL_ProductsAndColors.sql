-- Seleciona o nome do produto, o preço total (preço do produto + preço da cor, se aplicável),
-- o preço total acrescido de 10%, o preço total com desconto de 10% e o nome da cor do produto.
SELECT 
    p.NOME_PROD AS Nome_do_Produto,  -- Seleciona o nome do produto da tabela PRODUTOS e define um alias para essa coluna.
    (p.PRC_PROD + COALESCE(c.PRC_COR, 0)) AS Preco_Total,  -- Calcula o preço total do produto somando o preço do produto da tabela PRODUTOS e o preço da cor da tabela CORES, utilizando COALESCE para tratar valores nulos.
    CAST((p.PRC_PROD + COALESCE(c.PRC_COR, 0)) * 1.10 AS DECIMAL(10, 2)) AS Acrescimo,  -- Calcula o preço total acrescido de 10%.
    CAST((p.PRC_PROD + COALESCE(c.PRC_COR, 0)) * 0.90 AS DECIMAL(10, 2)) AS Desconto,  -- Calcula o preço total com desconto de 10%.
    c.NOME_COR AS Cor_do_Produto  -- Seleciona o nome da cor do produto da tabela CORES e define um alias para essa coluna.
FROM 
    PRODUTOS p  -- Define a tabela PRODUTOS como 'p' para facilitar a referência.
LEFT JOIN 
    CORES c ON p.IDPRODUTO = c.IDPRODUTO  -- Realiza uma junção à esquerda entre as tabelas PRODUTOS e CORES, utilizando a coluna IDPRODUTO para relacioná-las.
WHERE 
    p.NOME_PROD IS NOT NULL  -- Filtra os registros onde o nome do produto não é nulo.
ORDER BY 
    Preco_Total ASC;  -- Ordena os resultados pelo preço total em ordem crescente.