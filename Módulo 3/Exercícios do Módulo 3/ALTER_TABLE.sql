ALTER TABLE alunos ADD data_nascimento VARCHAR2(10);

ALTER TABLE alunos MODIFY (data_nascimento date);
ALTER TABLE alunos RENAME COLUMN data_nascimento TO nascimento;

ALTER TABLE instrutor ADD email VARCHAR2(100);

ALTER TABLE instrutor drop column email;
