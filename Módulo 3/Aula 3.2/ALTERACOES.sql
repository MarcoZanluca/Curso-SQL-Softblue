

ALTER TABLE funcionarios MODIFY (nome VARCHAR(50));

ALTER TABLE funcionarios RENAME COLUMN nome TO  nome_func;

ALTER TABLE funcionarios RENAME COLUMN nome_func TO  nome;
