/*SELECT * FROM tb_usuarios;*/
/*SELECT Produto, QuantidadeVendida * FROM vendas */
/*SELECT Produto, Categoria, DataVenda
FROM vendas 
WHERE DataVenda > "2024-05-01";*/
/*SELECT Produto, Valor
FROM vendas
WHERE Valor > 100;*/
/*SELECT Produto, Valor, DataVenda
FROM vendas
WHERE DataVenda >= "2024-07-01"
AND DataVenda <= "2024-09-30"*/

/*ALTER TABLE tb_usuarios
MODIFY COLUMN id_usuario INT NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (id_usuario);

ALTER TABLE tb_emprestimos
MODIFY COLUMN id_emprestimo INT NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (id_emprestimo);

ALTER TABLE tb_generos
MODIFY COLUMN id_genero INT NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (id_genero);

ALTER TABLE tb_livros
MODIFY COLUMN id_livro INT NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (id_livro);*/

/*ALTER TABLE tb_pedidos
ADD CONSTRAINT fk_clientes
FOREIGN KEY (cliente_codigo) REFERENCES tb_clientes(codigo_cliente);

ALTER TABLE tb_itens
ADD CONSTRAINT fk_pedidos2
FOREIGN KEY (pedido_codigo) REFERENCES tb_pedidos(codigo_pedido);

ALTER TABLE tb_itens
ADD CONSTRAINT fk_itens
FOREIGN KEY (item_codigo) REFERENCES tb_produtos(codigo_produto);*/

SELECT nome, CPF, email, telefone, codigo_pedido
FROM tb_pedidos
INNER JOIN tb_clientes 
ON cliente_codigo = codigo_cliente
WHERE codigo_pedido = 17tb_produtos