-- query relacionada a algebra relacional da questão 4 (biblioteca)
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



