USE biblioteca_pessoal_1s2026;
SHOW DATABASES;
USE biblioteca_pessoal_1s2026;
SHOW TABLES;
describe livro;
DROP TABLE livro;

CREATE TABLE livro(
    titulo VARCHAR(255),
    sinopse TEXT,
    autor VARCHAR(128),
    editora VARCHAR(128),
    categoria VARCHAR(128),
    ano_publicacao YEAR
);



	
     