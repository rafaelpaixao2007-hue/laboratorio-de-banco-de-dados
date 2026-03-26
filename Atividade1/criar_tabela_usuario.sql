SHOW DATABASES;
CREATE DATABASE biblioteca_pessoal_1s2026;
USE biblioteca_pessoal_1s2026;
DROP TABLE usuario;
SHOW TABLES;

CREATE TABLE usuario(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(128) NOT NULL UNIQUE,
    data_cadastro DATE
);


