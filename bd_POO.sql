create database complemente;
use complemente;

CREATE TABLE aluno (
    ra INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    cod_curso INT NOT NULL,
    curso VARCHAR(100) NOT NULL
);

CREATE TABLE atividade (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ra INT NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    descricao TEXT,
    inicio DATE NOT NULL,
    fim DATE NOT NULL,
    duracao INT NOT NULL,
    pontos INT DEFAULT 0,
    grupo INT,
    FOREIGN KEY (ra) REFERENCES aluno(ra)
);

CREATE TABLE total_atividade (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ra INT NOT NULL,
    grupo INT NOT NULL,
    soma_pontos INT NOT NULL,
    FOREIGN KEY (ra) REFERENCES aluno(ra)
);

CREATE TABLE relatorio (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ra INT NOT NULL,
    caminho_arquivo VARCHAR(255),
    FOREIGN KEY (ra) REFERENCES aluno(ra)
);

CREATE TABLE relatorio_atividade (
    id_relatorio INT,
    id_atividade INT,
    PRIMARY KEY (id_relatorio, id_atividade),
    FOREIGN KEY (id_relatorio) REFERENCES relatorio(id),
    FOREIGN KEY (id_atividade) REFERENCES atividade(id)
);

-- inserção de dados na tabela aluno
INSERT INTO aluno (ra, nome, email, senha, cod_curso, curso) VALUES 
(2601435, 'Maria Clara', 'mariajesus@alunos.utfpr.edu.br', 'Mc2610!', 1, "Engenharia de Software"),
(2369885, 'Josiane Batista', 'josibatista@alunos.utfpr.edu.br', 'Jos!1208', 2, "Controle e Automação"),
(2564254, 'Pamela Berti', 'pbraz@alunos.utfpr.edu.br', 'Br@z0412', 1, "Análise e Desenvolvimento de Sistemas");

select * from aluno; 

