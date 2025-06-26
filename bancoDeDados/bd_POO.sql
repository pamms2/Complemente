create database complemente;
use complemente;

CREATE TABLE aluno (
    ra INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    codCurso INT NOT NULL,
    curso VARCHAR(100) NOT NULL
);

CREATE TABLE atividade (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ra INT NOT NULL,
    tipo VARCHAR(500) NOT NULL,
    descricao TEXT,
    inicio DATE NOT NULL,
    fim DATE NOT NULL,
    duracao INT NOT NULL,
    unidade VARCHAR(20),
    pontos INT DEFAULT 0,
    grupo INT,
    FOREIGN KEY (ra) REFERENCES aluno(ra)
);

CREATE TABLE totalAtividade (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ra INT NOT NULL,
    grupo INT NOT NULL,
    somaPontos INT NOT NULL,
    FOREIGN KEY (ra) REFERENCES aluno(ra)
);

CREATE TABLE relatorio (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ra INT NOT NULL,
    caminhoArquivo VARCHAR(255),
    FOREIGN KEY (ra) REFERENCES aluno(ra)
);

CREATE TABLE relatorioAtividade (
    idRelatorio INT,
    idAtividade INT,
    PRIMARY KEY (idRelatorio, idAtividade),
    FOREIGN KEY (idRelatorio) REFERENCES relatorio(id),
    FOREIGN KEY (idAtividade) REFERENCES atividade(id)
);

-- inserção de dados na tabela aluno
INSERT INTO aluno (ra, nome, email, senha, codCurso, curso) VALUES 
(2601435, 'Maria Clara', 'mariajesus@alunos.utfpr.edu.br', 'Mc2610!', 3, "Engenharia de Software"),
(2369885, 'Josiane Batista', 'josibatista@alunos.utfpr.edu.br', 'Jos!1208', 2, "Controle e Automação"),
(2564254, 'Pamela Berti', 'pbraz@alunos.utfpr.edu.br', 'Br@z0412', 1, "Análise e Desenvolvimento de Sistemas");

select * from aluno; 
