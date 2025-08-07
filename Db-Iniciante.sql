-- Criando a tabela "Produto" dentro do esquema "Loja"
-- exercicio 1
CREATE TABLE Bardao (
          id_produto INT PRIMARY KEY AUTO_INCREMENT, -- Auto increment para atribuir dados automaticamente
          nome VARCHAR(200) NOT NULL,
          valor_custo NUMERIC(10, 2) NOT NULL,
          valor_venda NUMERIC(10, 2) NOT NULL
);

INSERT INTO Loja.Produto (nome, valor_custo, valor_venda)
  VALUES
  ('Smartphone', 200, 400),
-- Smartphone sendo o primeiro
/* Economizando linhas de codigo catalogando produtos
de uma vez só */


INSERT INTO Loja.Produto (nome, valor_custo, valor_venda)
    VALUES
    
    ('Fone de ouvido', 70, 125),
    ('Abajur', 70, 80),
    ('Arduino', 35, 70),
    ('Arduino', 30, 60);

-- exercicio 2
        UPDATE Loja.Produto
        SET valor_venda = 1.00
        WHERE nome = 'café';

-- Exercício 3: Recuperar os cinco produtos mais caros
        SELECT nome, valor_venda
        FROM Loja.Produto
        ORDER BY valor_venda DESC
        LIMIT 5;

-- Exercício 4: Excluir produtos com prejuízo
-- Comando que exclui todos os produtos cujo preço de venda é menor que o valor de custo.
DELETE FROM Loja.Produto
WHERE valor_venda < valor_custo;
