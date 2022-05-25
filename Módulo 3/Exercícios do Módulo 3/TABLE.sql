CREATE TABLE cursosSoftblue
(
       curso VARCHAR2(45),
       instrutor VARCHAR2(45),
       PRIMARY KEY (curso)
);

CREATE TABLE cursos
(
       codigo VARCHAR2(45),
       nome VARCHAR2(45),
       tipo VARCHAR2(45),
       preco VARCHAR2(45),
       PRIMARY KEY (codigo)
);

CREATE TABLE instrutor
(
       codigo VARCHAR2(45),
       nome VARCHAR2(45),
       telefone VARCHAR2(45),
       PRIMARY KEY (codigo)
);

/*-----------------------------------------------------------------*/
  
CREATE TABLE informacoesAlunos
(
       aluno VARCHAR2(45),
       cursoMatriculado VARCHAR2(45),
       PRIMARY KEY (aluno)
);

CREATE TABLE alunos
(
       codigo VARCHAR2(45),
       aluno VARCHAR2(45),
       endereço VARCHAR2(45),
       emails VARCHAR2(45),
       PRIMARY KEY (codigo)
);

/*-----------------------------------------------------------------*/

CREATE TABLE compras
(
       curso VARCHAR2(45),
       intrutuor VARCHAR2(45),
       PRIMARY KEY (curso)
);

CREATE TABLE dadosCompra
(
       codigo VARCHAR2(45),
       curso VARCHAR2(45),
       dia/*data*/ VARCHAR2(45),
       hora VARCHAR2(45),
       PRIMARY KEY (codigo)
);

/*-----------------------------------------------------------------*/
