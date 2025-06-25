# 🗂️ Complemente

Desenvolvido como parte da avaliação da disciplina de **Programação Orientada a Objetos 2**, do curso de Engenharia de Software, o projeto **Complemente** é um sistema desktop — construído em **Java** com banco de dados relacional (MySQL) — que visa auxiliar os alunos da UTFPR, campus Cornélio Procópio, no **gerenciamento das Atividades Complementares** exigidas para a formação do curso.

Neste repositório estão organizados os artefatos que compõem o sistema, incluindo requisitos, diagramas, scripts e código-fonte.

<br>

## 🎯 Objetivo

- Centralizar o registro das atividades complementares dos alunos da UTFPR-CP em uma única aplicação desktop.
- Permitir o acompanhamento do progresso por categoria, com alertas de carga horária mínima e máxima.
- Gerar automaticamente o relatório final no modelo institucional, facilitando a gestão para alunos e professores.


## 🧰 Ferramentas Utilizadas

- **Astah**: Criação dos diagramas UML (caso de uso e classes).
- **Java**: Linguagem de programação principal do sistema.
- **JDBC**: Integração entre Java e banco de dados relacional.
- **NetBeans**: IDE usada para programar e montar as interfaces gráficas.
- **MySQL**: Banco de dados relacional utilizado no armazenamento das informações.
- **GitHub**: Controle de versão e hospedagem do repositório.
- **WhatsApp**: Comunicação prática entre os membros da equipe.
- **Trello**: Organização de tarefas e cronograma visual do projeto.
- **Microsoft Word / Google Docs**: Produção e formatação da documentação acadêmica.


## 🧪 Metodologia

A metodologia seguiu o **modelo incremental**, com etapas progressivas de modelagem UML, implementação em Java, seguindo o padrão **MVC**,  e construção do banco de dados. As interfaces foram desenvolvidas em paralelo à integração dos módulos, com organização via Trello e testes. No geral, o plano de execução se manteve estável, mas com adaptações conforme limitações técnicas.

<br>

## 🏗️ Construção

### ✅ Requisitos Funcionais

Os requisitos funcionais definem o que o sistema deve fazer, ou seja, as funcionalidades específicas  necessárias para atender os objetivos do projeto. No sistema Complemente, essas funções abrangem cadastro, login, manipulação de atividades e geração de relatórios.

| Identificador | Descrição                                                                                           | Prioridade |
|---------------|---------------------------------------------------------------------------------------------------- |------------|
| RF01          | O sistema deve permitir o cadastro do estudante com RA, nome, senha, e-mail, curso e código.        | Alta       |
| RF02          | O sistema só deve permitir login com RA e senha válidos.                                            | Alta       |
| RF03          | O sistema deve permitir as funcionalidades CRUD no perfil do usuário.                               | Média      |
| RF04          | O sistema deve permitir o cadastro de atividades complementares com dados completos.                | Alta       |
| RF05          | O sistema deve permitir as funcionalidades CRUD para atividades complementares.                     | Alta       |
| RF06          | O sistema deve fornecer a lista de tipos de atividade.                                              | Baixa      |
| RF07          | O sistema deve identificar o grupo da atividade com base no tipo cadastrado.                        | Alta       |
| RF08          | O sistema deve calcular os pontos conforme os dados da atividade.                                   | Alta       |
| RF09          | O sistema deve exibir as atividades em formato de dashboard.                                        | Baixa      |
| RF10          | O usuário deve poder selecionar quais atividades irão para o relatório final.                       | Média      |
| RF11          | O sistema deve indicar a quantidade de horas que faltam para atingir o mínimo de cada grupo.        | Baixa      |
| RF12          | O sistema deve indicar a quantidade de horas que ultrapassaram o máximo de cada grupo.              | Baixa      |
| RF13          | O sistema deve gerar relatórios em PDF conforme solicitado pelo usuário.                            | Média      |


### ⚙️ Requisitos Não Funcionais

Os requisitos não funcionais determinam como o sistema deve operar, garantindo qualidade, desempenho, segurança e conformidade técnica. Eles asseguram a estabilidade, usabilidade e integridade do sistema Complemente durante seu uso.

| Identificador | Descrição                                                                                               | Tipo           |
|---------------|---------------------------------------------------------------------------------------------------------|----------------|
| RNF01         | O sistema deve gerar o relatório em apenas um clique.                                                   | Usabilidade    |
| RNF02         | O sistema deve possuir interface acessível.                                                             | Acessibilidade |
| RNF03         | O sistema deve ser implementado utilizando a linguagem Java.                                            | Implementação  |
| RNF04         | O sistema deve ser gerenciado a partir da linguagem SQL.                                                | Implementação  |
| RNF05         | O sistema deve validar e-mails no formato usuario@alunos.utfpr.edu.br.                                  | Segurança      |
| RNF06         | O sistema deve validar RAs no formato numérico de 7 dígitos: 1234567.                                   | Segurança      |
| RNF07         | O sistema deve criptografar todos os dados conforme a Lei Nº 13.709/2018 (LGPD).                        | Legislativo    |
| RNF08         | O sistema deve funcionar corretamente nos sistemas operacionais Windows e Linux.                        | Portabilidade  |
| RNF09         | O sistema deve garantir que os dados de cada usuário permaneçam privados e acessíveis apenas com login. | Segurança      |
| RNF10         | O sistema deve armazenar os dados e atividades do usuário em um arquivo local na máquina.               | Armazenamento  |
| RNF11         | O sistema deve garantir que os dados de um usuário não sejam acessíveis por outro.                      | Segurança      |


### 📌 Diagrama de Casos de Uso

Representa as interações do usuário (aluno) com o sistema, organizando os requisitos funcionais em casos de uso conectados por relações.

![Diagrama de Casos de Uso](diagramas/diagramaDeCasosDeUsos.png)

- Onde encontrar: 

### 🧩 Diagrama de Classes

Modela a estrutura do sistema com base nos casos de uso, definindo classes, atributos e métodos que orientam a implementação em Java e o mapeamento do banco de dados.

![Diagrama de Classes](diagramas/diagramaDeClasses.png)

- Onde encontrar: 

### 🛠️ Práticas de Projeto

Uso do padrão **MVC**, separação entre camadas de lógica, dados e visual, além da aplicação de princípios SOLID sempre que possível.

### 🗄️ Banco de Dados

Estrutura em **MySQL** com tabelas para usuários...

### 💻 Sistema



<br>

## 📘 Conclusão

### 📈 Resultados



### 🐞 Problemas



### 🚀 Melhorias



<br>

## 📂 Estrutura dos Arquivos

- **/codigo** – Código-fonte do sistema em Java, estruturado em pacotes do NetBeans  
- **/diagramas** – Diagramas UML do projeto (formato Astah e imagens PNG)  
- **/bancoDeDados** – Script SQL com a estrutura do banco de dados relacional  
- **/documentacao** – Relatório acadêmico e outros materiais de apoio  
- **README.md** – Arquivo de apresentação e instruções do projeto


## 👩‍💻 Autoria

Alunas: **Josiane Mariane Batista**, **Maria Clara Nascimento de Jesus** e **Pamela Berti Braz**
