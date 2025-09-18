-- inserir 10 livros com diferentes autores

-- Livros
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

-- Autores
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

-- Leitor
INSERT INTO Leitor(CodLeitor, Nome) VALUES
('101', 'Thiago Naoki'),
('103','Joana Braz');

-- atualizar o status de 'emprestado' para 'disponivel'

-- primeiro precisamos pegar um livro emprestado..

insert into Emprestimo (ISBN, CodLeitor, DataEmprestimo, DataRevolucao) VALUES
(001,'101', '29-05-2025', '14-06-2025'),
('009', '103', '06-05-2025', '30-05-2025');

