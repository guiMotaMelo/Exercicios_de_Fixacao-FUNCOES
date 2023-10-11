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

SELECT produto, ROUND(preco, 2) AS preco_arredondado FROM produtos;

SELECT produto, ABS(quantidade) AS quantidade_absoluta FROM produtos;

SELECT AVG(preco) AS media_precos FROM produtos;

CREATE TABLE eventos (
    data_evento DATE
);

INSERT INTO eventos (data_evento) VALUES
    ('2023-10-01'),
    ('2023-10-05'),
    ('2023-10-10');

INSERT INTO eventos (data_evento) VALUES (NOW());

SELECT
    data_evento,
    DATEDIFF(data_evento, '2023-10-01') AS dias_entre_datas
FROM eventos;

SELECT
    data_evento,
    DAYNAME(data_evento) AS nome_dia_semana
FROM eventos;

SELECT
    produto,
    IF(quantidade > 0, 'Em estoque', 'Fora de estoque') AS status_estoque
FROM produtos;
