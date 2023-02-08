-- Busque produtos quaisquer, limitados a 5;
desafio_sql_b672418d=# SELECT * FROM produtos LIMIT 5;
 id |          nome          | preco  
----+------------------------+--------
  1 | Televisão 43"          | 139997
  2 | Televisão 55"          | 250000
  3 | Notebook Entrada       | 200000
  4 | Notebook Intermediário | 350000
  5 | Notebook Topo de Linha | 600000
(5 rows)

-- Busque clientes quaisquer da loja, limitados a 3;
desafio_sql_b672418d=# SELECT * FROM clientes LIMIT 3;
 id |          nome          |     cpf     
----+------------------------+-------------
  1 | Allana Fidalgo Moreira | 12345678900
  2 | Benício Freire Sampaio | 98765432100
  3 | Orlando Pequeno Jesus  | 10293847560
(3 rows)

-- Busque o produto com nome Televisão 43";
desafio_sql_b672418d=# SELECT * FROM produtos WHERE nome = 'Televisão 43"';
 id |     nome      | preco  
----+---------------+--------
  1 | Televisão 43" | 139997
(1 row)


-- Adicione um novo produto chamado Macbook Pro 13" com preço R$ 17.000,00;
desafio_sql_b672418d=# INSERT INTO produtos (nome, preco) VALUES ('MacBook Pro 13"', 1700000);
INSERT 0 1

-- Orlando Pequeno Jesus fez barraco na loja e agora está banido. Remova-o da lista de clientes;
desafio_sql_b672418d=# DELETE FROM clientes WHERE nome = 'Orlando Pequeno Jesus';
DELETE 1

-- O dólar subiu mais uma vez e o preço do produto Pelúcia Strange Planet com Gatinho agora é R$ 80,00. Atualize no banco;
desafio_sql_b672418d=# UPDATE produtos SET preco = 8000 WHERE nome = 'Pelúcia Strange Planet com Gatinho';
UPDATE 1


-- A alta do dólar também afetou o preço do Violão Lava ME 2. Altere seu preço para R$ 9800,00. Atualize o banco.
desafio_sql_b672418d=# UPDATE produtos SET preco = 980000 WHERE nome = 'Violão Lava ME 2';
UPDATE 1


-- Lucca Santarém Branco usou o CPF de um laranja. Modifique seu CPF para o valor correto: 04652651298;
desafio_sql_b672418d=# UPDATE clientes SET cpf = 04652651298 WHERE nome = 'Lucca Santarém Branco';
UPDATE 1

-- Chico Buarque de Holanda comprou o produto Violão Lava ME 2. Adicione esse registro de compra na tabela compra;
desafio_sql_b672418d=# INSERT INTO compras (id_cliente, id_produto) VALUES (8, 10);
INSERT 0 1


-- Olga Cascais Fortunato comprou dois Celular Topo de Linha. Adicione os registros de compra na tabela compra;
desafio_sql_b672418d=# INSERT INTO compras (id_cliente, id_produto) VALUES (4, 8), (4, 8);
INSERT 0 2


-- Martinha Lima Zambujal devolveu o produto Fone Topo de Linha. Remova este registro da tabela compra;
desafio_sql_b672418d=# DELETE FROM compras WHERE id = 5;
DELETE 1


-- Busque todos os produtos ordenados pelo preço, de forma crescente. Para este item, procure por sql order by;
desafio_sql_b672418d=# SELECT * FROM produtos ORDER BY preco ASC;
 id |                nome                |  preco  
----+------------------------------------+---------
 12 | Fone Entrada                       |    2000
  9 | Pelúcia Strange Planet com Gatinho |    8000
 13 | Fone Intermediário                 |   20000
 14 | Fone Topo de Linha                 |   80000
  6 | Celular Entrada                    |   80000
  1 | Televisão 43"                      |  139997
  7 | Celular Intermediário              |  160000
  3 | Notebook Entrada                   |  200000
  2 | Televisão 55"                      |  250000
  8 | Celular Topo de Linha              |  340000
  4 | Notebook Intermediário             |  350000
 11 | Bicicleta Elétrica                 |  370000
  5 | Notebook Topo de Linha             |  600000
 10 | Violão Lava ME 2                   |  980000
 15 | MacBook Pro 13"                    | 1700000
(15 rows)


-- Busque os 3 produtos mais baratos;
desafio_sql_b672418d=# SELECT * FROM produtos ORDER BY preco ASC LIMIT 3;
 id |                nome                | preco 
----+------------------------------------+-------
 12 | Fone Entrada                       |  2000
  9 | Pelúcia Strange Planet com Gatinho |  8000
 13 | Fone Intermediário                 | 20000
(3 rows)

-- Busque o produto com o maior preço;
desafio_sql_b672418d=# SELECT * FROM produtos ORDER BY preco DESC LIMIT 1;
 id |      nome       |  preco  
----+-----------------+---------
 15 | MacBook Pro 13" | 1700000
(1 row)

-- Busque o produto com o segundo menor preço. Para este item, procure por sql offset.
desafio_sql_b672418d=# SELECT * FROM produtos ORDER BY preco ASC LIMIT 1 OFFSET 1;
 id |                nome                | preco 
----+------------------------------------+-------
  9 | Pelúcia Strange Planet com Gatinho |  8000
(1 row)
