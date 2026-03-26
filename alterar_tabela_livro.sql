USE biblioteca_pessoal_1s2026;

/*
Livro: remoção das colunas autor, editora e categoria;
Livro: inclusão das colunas data_cadastro, data_atualizacao, id_usuario(FK),
*/

/* na minha tabela livro ja nao tinha a coluna categoria */
ALTER TABLE livro
DROP COLUMN autor,
DROP COLUMN editora;

ALTER TABLE livro
ADD COLUMN data_cadastro TIMESTAMP,
ADD COLUMN data_atualizacao TIMESTAMP,
ADD COLUMN id_usuario INT,
ADD COLUMN id_autor INT,
ADD COLUMN id_editora INT,
ADD COLUMN id_categoria INT;

-- Usuario (cascade delete)
ALTER TABLE livro
ADD CONSTRAINT fk_livro_usuario
FOREIGN KEY (id_usuario)
REFERENCES usuario(id)
ON DELETE CASCADE;

-- FK Autor (não permite exclusão se houver vínculo)
ALTER TABLE livro
ADD CONSTRAINT fk_livro_autor
FOREIGN KEY (id_autor)
REFERENCES autor(id)
ON DELETE RESTRICT;

-- FK Editora
ALTER TABLE livro
ADD CONSTRAINT fk_livro_editora
FOREIGN KEY (id_editora)
REFERENCES editora(id)
ON DELETE RESTRICT;

-- FK Categoria
ALTER TABLE livro
ADD CONSTRAINT fk_livro_categoria
FOREIGN KEY (id_categoria)
REFERENCES categoria(id)
ON DELETE RESTRICT;