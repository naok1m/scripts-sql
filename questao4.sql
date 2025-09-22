-- query relacionada a algebra relacional da questão 4 (biblioteca)
create database biblioteca;
use biblioteca;

create table Livros (
	CodAutor int,
	ISBN int primary key,
    AnoPublicacao varchar(20),
    Edicao int,
    foreign key (CodAutor) references Autores(CodAutor)
);
alter table Livros add titulo varchar(100);


create table Autores(
	CodAutor int primary key,
    Nome varchar(100),
    Nacionalidade varchar(50)
);


create table Emprestimo(
	CodEmprestimo int auto_increment primary key,
    ISBN int,
    CodLeitor int,
    DataEmprestimo varchar(20),
    DataRevolucao varchar(20),
    foreign key (ISBN) references Livros(ISBN)
);
alter table Emprestimo add foreign key (CodLeitor) references Leitor(CodLeitor);

CREATE TABLE Leitor (
    CodLeitor INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Telefone VARCHAR(20),
    Email VARCHAR(100)
);

alter table Livros add status varchar(20) default 'disponivel';
select*from livros;
select*from autores;

-- QUESTAO 4 

-- inserir 10 livros com diferentes autores

-- b) Inserir pelo menos 10 livros com diferentes autores
INSERT INTO Livros (ISBN, Titulo, AnoPublicacao, CodAutor) VALUES
('001', 'Banco de Dados Avançado', 2015,1),
('002', 'Redes de Computadores', 2012, 2),
('003', 'Harry Potter e a Pedra Filosofal', 2005, 3),
('004', 'Sistemas Operacionais', 2018, 4),
('005', 'O Senhor dos Anéis', 2010, 5),
('006', 'O pequeno príncipe', 2010, 6),
('007', 'Arte da guerra', 2015, 7),
('008', 'Percy Jackson', 2008, 8),
('009', 'O príncipe', 2010, 9),
('010', 'Utopia', 2010, 10);

INSERT INTO Autores (CodAutor, Nome) VALUES
(1, 'Carlos Silva'),
(2, 'Fernanda Souza'),
(3, 'J.K. Rowling'),
(4, 'André Lima'),
(5, 'J.R.R. Tolkien'),
(6, 'Antoine de Saint-Exupéry'),
(7, 'Sun Tzu'),
(8, 'Rick Riordan'),
(9, 'Maquiavel'),
(10, 'Thomas More');

-- Leitores
INSERT INTO Leitor(CodLeitor, Nome) VALUES
('101', 'Thiago Naoki'),
('103','Joana Braz');


insert into Emprestimo (ISBN, CodLeitor, DataEmprestimo, DataRevolucao) VALUES
(001,'101', '29-05-2025', '14-06-2025'),
(009, '103', '06-05-2025', '30-05-2025');

UPDATE Livros
SET status = 'emprestado'
WHERE ISBN = 001;
UPDATE Livros
SET status = 'emprestado'
WHERE ISBN = 009;

-- c) Atualizar o status de um livro emprestado para “devolvido”

update livros
set status = 'devolvido'
where ISBN = 001;

select*from livros;

-- d) Consultar todos os livros de um determinado autor
select titulo, AnoPublicacao
from Livros L
join Autores A ON L.codAutor = A.CodAutor
where A.nome = 'J.K. Rowling';

-- e) Listar todos os livros que estão emprestados no momento
select titulo
from livros
where status = 'emprestado';

-- f) Encontrar o livro mais antigo do acervo
select titulo, anoPublicacao
from Livros
order by anoPublicacao ASC
limit 1;

-- g) Calcular a quantidade de livros emprestados por autor


