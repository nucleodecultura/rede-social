CREATE TABLE clientes (
    cliente_id INT PRIMARY KEY,
    nome VARCHAR(100)
);
CREATE TABLE produtos (
    produto_id INT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10, 2)
);
    '1Q'
CREATE TABLE vendas (
    venda_id INT PRIMARY KEY,
    cliente_id INT,
    produto_id INT,
    data_venda DATE,
    quantidade INT,
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
    FOREIGN KEY (produto_id) REFERENCES produtos(produto_id)
);
