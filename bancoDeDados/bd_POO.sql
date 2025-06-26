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
