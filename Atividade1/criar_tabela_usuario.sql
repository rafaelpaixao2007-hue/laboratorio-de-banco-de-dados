SHOW DATABASES;
USE biblioteca_pessoal_1s2026;
SHOW TABLES;
DROP TABLE usuario;

CREATE TABLE usuario(
	id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(128) NOT NULL UNIQUE,
    data_cadastro DATE DEFAULT (CURRENT_DATE) NOT NULL
);

/*CREATE TABLE livro(
	id_livro INT auto_increment PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    sinopse TEXT NOT NULL,
    autor 
);*/ 