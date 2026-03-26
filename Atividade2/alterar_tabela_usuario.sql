USE biblioteca_pessoal_1s2026;

-- Alterar tipo
ALTER TABLE Usuario
MODIFY COLUMN data_cadastro TIMESTAMP;

-- Adicionar novo campo
ALTER TABLE Usuario
ADD COLUMN data_atualizacao TIMESTAMP;