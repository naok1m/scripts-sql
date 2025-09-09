use escola;

create table Alunos(
	id int not null primary key auto_increment,
    nome varchar(100),
    dataNascimento varchar(20),
    endereco varchar(100),
    nota double,
    nomeDisciplina foreign key (disciplina) references disciplinas(id_disciplina)
);
create table disciplinas(
	nome varchar(100) not null,
    cargaHoraria int
);
create table notas(
	id_aluno int not null primary key,
	av1 double,
    av2 double,
    trabalho double,
    notaFinal double,
	situacao varchar(20),
	FOREIGN KEY (id_aluno) REFERENCES Alunos(id)
);


alter table disciplinas add id_disciplinas int primary key auto_increment;

alter table alunos modify dataNascimento varchar(20);

alter table alunos modify id int auto_increment;

insert into alunos (nome, dataNascimento, endereco, nota) 
values
('Pedro', '15-05-2000', 'Rua F 120', 8.0),
('Joana', '02-08-2003', 'Rua C 80', 10),
('Carlos', '2005-09-10', 'Rua B 210', 7.0),
('Ana', '2004-11-22', 'Rua C 78', 8.5),
('Pedro', '2000-05-15', 'Rua F 120', 6.0),
('Joana', '2003-08-02', 'Rua C 80', 10.0),
('Lucas', '2004-07-18', 'Rua G 33', 7.5),
('Beatriz', '2002-12-05', 'Rua H 150', 9.5),
('Rafael', '2003-03-20', 'Rua I 210', 6.5),
('Fernanda', '2005-01-10', 'Rua J 60', 8.0);


alter table alunos add foreign key (disciplina) references disciplinas(id_disciplinas);


select*from notas;

select*from alunos;