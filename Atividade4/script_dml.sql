-- Livros da autora J.K. Rowling
SELECT * FROM livro WHERE id_autor = 8;

-- Livros da categoria Filosofia
SELECT * FROM livro WHERE id_categoria = 6;

-- Update
UPDATE categoria
SET nome = 'Censurado'
WHERE id_categoria = 6;

-- Delete
DELETE FROM livro WHERE id_categoria = 6;