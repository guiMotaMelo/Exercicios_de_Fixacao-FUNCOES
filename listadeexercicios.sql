CREATE TABLE nomes (
    nome VARCHAR(50)
);

INSERT INTO nomes (nome) VALUES
    ('Roberta'),
    ('Roberto'),
    ('Maria Clara'),
    ('João');

SELECT UPPER(nome) AS nome_maiusculo FROM nomes;

SELECT nome, LENGTH(nome) AS tamanho FROM nomes;

SELECT
    CASE
        WHEN nome LIKE 'João%' THEN 'Sr. ' || nome
        ELSE 'Sra. ' || nome
    END AS nome_com_tratamento
FROM nomes;

CREATE TABLE produtos (
    produto VARCHAR(50),
    preco DECIMAL(10, 2),
    quantidade INT
);

INSERT INTO produtos (produto, preco, quantidade) VALUES
    ('Produto A', 10.99, 5),
    ('Produto B', 5.49, 0),
    ('Produto C', 15.99, -2);
