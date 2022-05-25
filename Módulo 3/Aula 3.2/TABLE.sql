CREATE TABLE funcionarios
(
       funcionario_id NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1),
       nome VARCHAR2(45),
       salario FLOAT,
       departamento VARCHAR2(45),
       PRIMARY KEY (funcionario_id)
);

CREATE TABLE veiculos 
(
       veiculos_id NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1),
       funcionario_veiculo_id NUMBER,
       veiculo VARCHAR(45),
       placa VARCHAR(10),
       PRIMARY KEY (veiculos_id),
       CONSTRAINT fk_veiculos_funcionarios FOREIGN KEY (funcionario_veiculo_id) REFERENCES funcionarios (funcionario_id));
);

CREATE TABLE salarios
(
       faixa VARCHAR(45),
       inicio FLOAT,
       fim FLOAT,
       PRIMARY KEY (faixa)      
);





