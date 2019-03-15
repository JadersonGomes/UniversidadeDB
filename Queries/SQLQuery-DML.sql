/* COMANDO CRIAÇÃO E EXECUÇÃO DE PROCEDURE QUE CONCATENA TODOS OS DADOS DO BANCO */

CREATE PROCEDURE ConcatenaBanco
	AS
	BEGIN
		SELECT * FROM Campus FULL OUTER JOIN Sala ON Campus.idCampus = Sala.idCampus
		FULL OUTER JOIN SalaColaborador ON Sala.andar = SalaColaborador.andar AND Sala.numSala = SalaColaborador.numSala
		FULL OUTER JOIN SalaComum ON Sala.andar = SalaComum.andar AND Sala.numSala = SalaComum.numSala
		FULL OUTER JOIN SalaLaboratorio ON Sala.andar = SalaLaboratorio.andar AND Sala.numSala = SalaLaboratorio.numSala
		FULL OUTER JOIN SalaLocal ON Sala.andar = SalaLocal.andar AND Sala.numSala = SalaLocal.numSala
		FULL OUTER JOIN Pessoa ON Pessoa.idCampus = Campus.idCampus
		FULL OUTER JOIN Funcionario ON Funcionario.cpf = Pessoa.cpf
		FULL OUTER JOIN Aluno ON Aluno.idCampus = Campus.idCampus
		FULL OUTER JOIN Funcionario_possui_cargo AS f ON f.numMatriculaFunc = Funcionario.numMatricula
		FULL OUTER JOIN Cargo ON f.idCargo = Cargo.idCargo
		FULL OUTER JOIN Limpeza ON Limpeza.idCargo = Cargo.idCargo
		FULL OUTER JOIN Manutencao ON Manutencao.idCargo = Cargo.idCargo
		FULL OUTER JOIN Seguranca ON Seguranca.idCargo = Cargo.idCargo
		FULL OUTER JOIN Diretor ON Diretor.idCargo = Cargo.idCargo
		FULL OUTER JOIN Coordenador ON Coordenador.idCargo = Cargo.idCargo
		FULL OUTER JOIN Professor ON Professor.idCargo = Cargo.idCargo
		FULL OUTER JOIN Aluno_matricula_curso AS a ON Aluno.idCurso = a.idCurso
		FULL OUTER JOIN Curso ON Aluno.idCurso = Curso.idCurso
		FULL OUTER JOIN Aluno_cursa_disciplina AS d ON d.numMatriculaAluno = Aluno.numMatricula
		FULL OUTER JOIN Disciplina ON d.idDisciplina = Disciplina.idDisciplina
		FULL OUTER JOIN Aluno_consulta_notas AS n ON n.numMatriculaAluno = Aluno.numMatricula
		FULL OUTER JOIN Notas ON n.numMatriculaAlunoNotas = Notas.numMatriculaAluno
		FULL OUTER JOIN Disciplina_possui_habilitacoes AS h ON h.idDisciplina = Disciplina.idDisciplina
		FULL OUTER JOIN Habilitacoes ON h.idHabilitacao = Habilitacoes.idhabilitacao
		FULL OUTER JOIN Professor_ministra_disciplina AS p ON p.idCargoProf = Professor.idCargoProfessor
		FULL OUTER JOIN Coordenador_define_curso AS cdc ON cdc.idCargoCoordenador = Coordenador.idCargoCoordenador
		FULL OUTER JOIN Professor_solicita_equipamento AS pse ON pse.idCargoProfessor = Professor.idCargoProfessor
		FULL OUTER JOIN Equipamento ON pse.idEquipamento = Equipamento.idEquipamento
	END

EXEC ConcatenaBanco


--------------------------------------------------------------------------------------------------------------

/* COMANDOS DE INSERÇÃO NAS TABELAS DO BANCO*/ 

/* TABELA CAMPUS */
INSERT INTO Campus(nome, pais, estado, cidade, bairro, rua, numeroEndereco) VALUES ('Jardim','Brasil', 'São Paulo','SP','Bairro do jardim', 'Rua josé leão', 40)

INSERT INTO Campus(nome, pais, estado, cidade, bairro, rua, numeroEndereco) VALUES ('Limão','Brasil', 'São Paulo','SP','Bairro do limão', 'Rua Jabaquara', 10)

INSERT INTO Campus(nome, pais, estado, cidade, bairro, rua, numeroEndereco) VALUES ('Bertioga','Brasil', 'São Paulo','SP','Vila Bertioga','Rua Santa Luzia', 5)

INSERT INTO Campus(nome, pais, estado, cidade, bairro, rua, numeroEndereco) VALUES ('Paraíso','Brasil', 'São Paulo','SP','Chácara Paraíso','Rua São Jorge', 30)

INSERT INTO Campus(nome, pais, estado, cidade, bairro, rua, numeroEndereco) VALUES ('Itália','Brasil', 'São Paulo','SP','Jardim Itália','Rua Dezenove ', 50)

INSERT INTO Campus(nome, pais, estado, cidade, bairro, rua, numeroEndereco) VALUES ('Leme','Brasil', 'São Paulo','SP','Vila Leme','Rua Castro Alves', 6)

INSERT INTO Campus(nome, pais, estado, cidade, bairro, rua, numeroEndereco) VALUES ('Invernada','Brasil', 'São Paulo','SP','Vila Invernada', 'Rua Projetada ', 3)

INSERT INTO Campus(nome, pais, estado, cidade, bairro, rua, numeroEndereco) VALUES ('Vila Lúcia','Brasil', 'São Paulo','SP','Vila Lúcia Elvira','Rua Santos Dumont', 39)

INSERT INTO Campus(nome, pais, estado, cidade, bairro, rua, numeroEndereco) VALUES ('Regente Feijó','Brasil', 'São Paulo','SP','Vila Regente Feijó', 'Rua Rio de Janeiro ', 78)

INSERT INTO Campus(nome, pais, estado, cidade, bairro, rua, numeroEndereco) VALUES ('Vila Cláudia','Brasil', 'São Paulo','SP','Vila Cláudia','Rua Maranhão', 21)



/* TABELA SALA */
INSERT INTO Sala(numSala,andar, idCampus)VALUES(1, 0, 1)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(2, 0, 2)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(3, 0, 3)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(4, 0, 4)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(5, 0, 5)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(6, 1, 2)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(7, 1, 3)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(8, 1, 4)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(9, 1, 5)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(10, 1, 6)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(11, 2, 1)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(12, 2, 2)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(13, 2, 3)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(14, 2, 4)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(15, 2, 5)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(16, 2, 6)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(17, 2, 1)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(18, 2, 2)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(19, 2, 3)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(20, 2, 4)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(21, 3, 5)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(22, 3, 6)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(23, 3, 1)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(24, 3, 2)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(25, 3, 3)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(26, 3, 4)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(27, 3, 5)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(28, 3, 6)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(29, 3, 1)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(30, 4, 2)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(31, 4, 3)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(32, 4, 4)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(33, 4, 5)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(34, 4, 6)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(35, 4, 1)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(36, 4, 2)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(37, 4, 3)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(38, 4, 4)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(39, 4, 5)

INSERT INTO Sala(numSala,andar, idCampus)VALUES(40, 4, 6)



/* TABELA SALA COMUM */
INSERT INTO SalaComum(numSala,andar,numLimiteAlunos, idCampus)VALUES(1, 0, 100, 1)

INSERT INTO SalaComum(numSala,andar,numLimiteAlunos, idCampus)VALUES(2, 0, 100, 1)

INSERT INTO SalaComum(numSala,andar,numLimiteAlunos, idCampus)VALUES(3, 0, 100, 1)

INSERT INTO SalaComum(numSala,andar,numLimiteAlunos, idCampus)VALUES(4, 0, 100, 1)

INSERT INTO SalaComum(numSala,andar,numLimiteAlunos, idCampus)VALUES(5, 0, 100, 1)

INSERT INTO SalaComum(numSala,andar,numLimiteAlunos, idCampus)VALUES(6, 1, 100, 2)

INSERT INTO SalaComum(numSala,andar,numLimiteAlunos, idCampus)VALUES(7, 1, 100, 3)

INSERT INTO SalaComum(numSala,andar,numLimiteAlunos, idCampus)VALUES(8, 1, 100, 4)

INSERT INTO SalaComum(numSala,andar,numLimiteAlunos, idCampus)VALUES(9, 1, 100, 5)

INSERT INTO SalaComum(numSala,andar,numLimiteAlunos, idCampus)VALUES(10, 1, 100, 6)



/* TABELA SALA LOCAL */ 
INSERT INTO SalaLocal(numSala,andar,dataHora, idCampus)VALUES(11, 2,'01/01/2018', 1)

INSERT INTO SalaLocal(numSala,andar,dataHora, idCampus)VALUES(12, 2,'02/01/2018', 2)

INSERT INTO SalaLocal(numSala,andar,dataHora, idCampus)VALUES(13, 2,'03/01/2018', 3)

INSERT INTO SalaLocal(numSala,andar,dataHora, idCampus)VALUES(14, 2,'04/01/2018', 4)

INSERT INTO SalaLocal(numSala,andar,dataHora, idCampus)VALUES(15, 2,'01/05/2018', 5)

INSERT INTO SalaLocal(numSala,andar,dataHora, idCampus)VALUES(16, 2,'06/01/2018', 6)

INSERT INTO SalaLocal(numSala,andar,dataHora, idCampus)VALUES(17, 2,'07/01/2018', 1)

INSERT INTO SalaLocal(numSala,andar,dataHora, idCampus)VALUES(18, 2,'08/01/2018', 2)

INSERT INTO SalaLocal(numSala,andar,dataHora, idCampus)VALUES(19, 2,'09/01/2018', 3)

INSERT INTO SalaLocal(numSala,andar,dataHora, idCampus)VALUES(20, 2,'10/01/2018', 4)



/* TABELA SALA LABORATORIO*/
INSERT INTO SalaLaboratorio(numSala,andar,idCampus)VALUES(21, 3, 5)

INSERT INTO SalaLaboratorio(numSala,andar,idCampus)VALUES(22, 3, 6)

INSERT INTO SalaLaboratorio(numSala,andar,idCampus)VALUES(23, 3, 1)

INSERT INTO SalaLaboratorio(numSala,andar,idCampus)VALUES(24, 3, 2)

INSERT INTO SalaLaboratorio(numSala,andar,idCampus)VALUES(25, 3, 3)

INSERT INTO SalaLaboratorio(numSala,andar,idCampus)VALUES(26, 3, 4)

INSERT INTO SalaLaboratorio(numSala,andar,idCampus)VALUES(27, 3, 5)

INSERT INTO SalaLaboratorio(numSala,andar,idCampus)VALUES(28, 3, 6)

INSERT INTO SalaLaboratorio(numSala,andar,idCampus)VALUES(29, 3, 1)

INSERT INTO SalaLaboratorio(numSala,andar,idCampus)VALUES(30, 4, 2)



/* TABELA SALA COLABORADOR */
INSERT INTO SalaColaborador(numSala,andar,qntdArmario, idCampus)VALUES(31, 4, 10, 3)

INSERT INTO SalaColaborador(numSala,andar,qntdArmario, idCampus)VALUES(32, 4, 10, 4)

INSERT INTO SalaColaborador(numSala,andar,qntdArmario, idCampus)VALUES(33, 4, 10, 5)

INSERT INTO SalaColaborador(numSala,andar,qntdArmario, idCampus)VALUES(34, 4, 10, 6)

INSERT INTO SalaColaborador(numSala,andar,qntdArmario, idCampus)VALUES(35, 4, 10, 1)

INSERT INTO SalaColaborador(numSala,andar,qntdArmario, idCampus)VALUES(36, 4, 10, 2)

INSERT INTO SalaColaborador(numSala,andar,qntdArmario, idCampus)VALUES(37, 4, 10, 3)

INSERT INTO SalaColaborador(numSala,andar,qntdArmario, idCampus)VALUES(38, 4, 10, 4)

INSERT INTO SalaColaborador(numSala,andar,qntdArmario, idCampus)VALUES(39, 4, 10, 5)

INSERT INTO SalaColaborador(numSala,andar,qntdArmario, idCampus)VALUES(40, 4, 10, 6)



/* TABELA PESSOA */
INSERT INTO Pessoa(nome, rg, cpf, dataNascimento, idCampus)VALUES('josé', '37855452', '12387687908', '21/11/1996', 1)

INSERT INTO Pessoa(nome, rg, cpf, dataNascimento, idCampus)VALUES('joão', '78377250', '43987687123', '26/12/1994', 2)

INSERT INTO Pessoa(nome, rg, cpf, dataNascimento, idCampus)VALUES('Luana', '78115725', '43981237908', '25/03/1998', 3)

INSERT INTO Pessoa(nome, rg, cpf, dataNascimento, idCampus)VALUES('Leandro', '55556725', '12367687908', '30/04/1999', 4)

INSERT INTO Pessoa(nome, rg, cpf, dataNascimento, idCampus)VALUES('Rogério', '32556725', '43987681234', '01/05/1996', 5)

INSERT INTO Pessoa(nome, rg, cpf, dataNascimento, idCampus)VALUES('Carla', '78006725', '43956787988', '10/06/1996', 6)

INSERT INTO Pessoa(nome, rg, cpf, dataNascimento, idCampus)VALUES('Lucas', '38556799', '24987687908', '11/07/1997', 7)

INSERT INTO Pessoa(nome, rg, cpf, dataNascimento, idCampus)VALUES('Valdir', '78556785', '43257687908', '14/09/1996', 8)

INSERT INTO Pessoa(nome, rg, cpf, dataNascimento, idCampus)VALUES('Jefferson', '28556725', '12376878089', '29/12/1996', 9)

INSERT INTO Pessoa(nome, rg, cpf, dataNascimento, idCampus)VALUES('Reginaldo', '38576725', '43987684809', '28/02/1996', 10)

INSERT INTO Pessoa(nome, rg, cpf, dataNascimento, idCampus)VALUES('Jesus', '23437878', '13800017910','01/02/1980', 1)

INSERT INTO Pessoa(nome, rg, cpf, dataNascimento, idCampus)VALUES('Jerônimo', '55437111', '13800917911','10/03/1981', 2)

INSERT INTO Pessoa(nome, rg, cpf, dataNascimento, idCampus)VALUES('Lívia', '55437878', '13841217949','15/04/1980', 3)

INSERT INTO Pessoa(nome, rg, cpf, dataNascimento, idCampus)VALUES('Lian', '55437878', '13867817978','11/05/1988', 4)

INSERT INTO Pessoa(nome, rg, cpf, dataNascimento, idCampus)VALUES('Caique', '55437222', '13222517954','20/11/1987', 5)

INSERT INTO Pessoa(nome, rg, cpf, dataNascimento, idCampus)VALUES('Renan', '55437878', '13855589777','21/09/1986', 6)

INSERT INTO Pessoa(nome, rg, cpf, dataNascimento, idCampus)VALUES('Gean', '55437333', '13855577759','24/07/1980', 7)

INSERT INTO Pessoa(nome, rg, cpf, dataNascimento, idCampus)VALUES('Beatriz', '44437878', '13855599981','30/04/1985', 8)

INSERT INTO Pessoa(nome, rg, cpf, dataNascimento, idCampus)VALUES('Ana', '55437555', '13855543225','31/08/1984', 9)

INSERT INTO Pessoa(nome, rg, cpf, dataNascimento, idCampus)VALUES('Carlos', '66437878', '13855523471','04/07/1983', 10)



/* TABELA FUNCIONARIO */
INSERT INTO Funcionario(nome, rg, cpf, dataNascimento, Salario, CargaHoraria, idCampus)VALUES('Jesus', '23437878', '12387687908','01/02/1980', 1100, 150, 1)

INSERT INTO Funcionario(nome, rg, cpf, dataNascimento, Salario, CargaHoraria, idCampus)VALUES('Jerônimo', '55437111', '43987687123','10/03/1981', 1000, 200, 2)

INSERT INTO Funcionario(nome, rg, cpf, dataNascimento, Salario, CargaHoraria, idCampus)VALUES('Lívia', '55437878', '43981237908','15/04/1980', 2500, 160, 3)

INSERT INTO Funcionario(nome, rg, cpf, dataNascimento, Salario, CargaHoraria, idCampus)VALUES('Lian', '55437878', '12367687908','11/05/1988', 1500, 200, 4)

INSERT INTO Funcionario(nome, rg, cpf, dataNascimento, Salario, CargaHoraria, idCampus)VALUES('Caique', '85437222', '43987681234','20/11/1987', 7000, 150, 5)

INSERT INTO Funcionario(nome, rg, cpf, dataNascimento, Salario, CargaHoraria, idCampus)VALUES('Renan', '35437878', '43956787988','21/09/1986', 6000, 150, 6)

INSERT INTO Funcionario(nome, rg, cpf, dataNascimento, Salario, CargaHoraria, idCampus)VALUES('Gean', '55437333', '24987687908','24/07/1980', 5000, 100, 7)

INSERT INTO Funcionario(nome, rg, cpf, dataNascimento, Salario, CargaHoraria, idCampus)VALUES('Beatriz', '45437878', '43257687908','30/12/1985', 4000, 90, 8)

INSERT INTO Funcionario(nome, rg, cpf, dataNascimento, Salario, CargaHoraria, idCampus)VALUES('Ana', '89437555', '12376878089','31/08/1984', 1200, 120, 9)

INSERT INTO Funcionario(nome, rg, cpf, dataNascimento, Salario, CargaHoraria, idCampus)VALUES('Josefa', '89055555', '43987684809','31/08/1984', 1200, 120, 10)



/* TABELA CURSO */
INSERT INTO Curso(nome, modalidade, valor, tipoCurso, CargaHoraria)VALUES('Sistemas de Informação','P', 1200, 'Graduação', 1200)

INSERT INTO Curso(nome, modalidade, valor, tipoCurso, CargaHoraria)VALUES('Arquitetura e Urbanismo','P', 1300, 'Graduação', 1600)

INSERT INTO Curso(nome, modalidade, valor, tipoCurso, CargaHoraria)VALUES('Publicidade e Propaganda','EAD', 1400, 'Graduação', 1800)

INSERT INTO Curso(nome, modalidade, valor, tipoCurso, CargaHoraria)VALUES('Biofísica','EAD', 1500, 'Graduação', 1600)

INSERT INTO Curso(nome, modalidade, valor, tipoCurso, CargaHoraria)VALUES('Ciências Contábeis','P', 1600, 'Graduação', 1200)

INSERT INTO Curso(nome, modalidade, valor, tipoCurso, CargaHoraria)VALUES('Bioengenharia','EAD', 1700, 'Graduação', 1700)

INSERT INTO Curso(nome, modalidade, valor, tipoCurso, CargaHoraria)VALUES('Agronomia','P', 1800, 'Graduação', 1200)

INSERT INTO Curso(nome, modalidade, valor, tipoCurso, CargaHoraria)VALUES('Ciências Biomoleculares','EAD', 1200, 'Graduação', 1400)

INSERT INTO Curso(nome, modalidade, valor, tipoCurso, CargaHoraria)VALUES('Matemática','P', 1900, 'Graduação', 1600)

INSERT INTO Curso(nome, modalidade, valor, tipoCurso, CargaHoraria)VALUES('Astronomia','P', 2000, 'Graduação', 1300)



/* TABELA ALUNO */
INSERT INTO Aluno (idCurso, nome, dataNascimento, rg, cpf, qtdFaltas, idCampus) VALUES(1, 'João', '26/12/1994', '78377250', '13800017910', 0, 1)

INSERT INTO Aluno (idCurso, nome, dataNascimento, rg, cpf, qtdFaltas, idCampus) VALUES(2, 'Luana', '25/03/1998', '38115725', '13800917911', 0, 2)

INSERT INTO Aluno (idCurso, nome, dataNascimento, rg, cpf, qtdFaltas, idCampus) VALUES(3, 'Leandro', '30/04/1999', '35556725', '13841217949', 2, 3)

INSERT INTO Aluno (idCurso, nome, dataNascimento, rg, cpf, qtdFaltas, idCampus) VALUES(4, 'Rogério', '01/05/1996', '12556725', '13867817978', 0, 4)

INSERT INTO Aluno (idCurso, nome, dataNascimento, rg, cpf, qtdFaltas, idCampus) VALUES(5, 'Carla', '10/06/1996', '38006725', '13222517954', 0, 5)

INSERT INTO Aluno (idCurso, nome, dataNascimento, rg, cpf, qtdFaltas, idCampus) VALUES(6, 'Lucas', '11/07/1997', '38556799', '13855589777', 0, 6)

INSERT INTO Aluno (idCurso, nome, dataNascimento, rg, cpf, qtdFaltas, idCampus) VALUES(7, 'Valdir', '14/09/1996', '37556785', '13855577759', 0, 7)

INSERT INTO Aluno (idCurso, nome, dataNascimento, rg, cpf, qtdFaltas, idCampus) VALUES(8, 'Jefferson', '29/12/1996', '28556725', '13855599981', 0, 8)

INSERT INTO Aluno (idCurso, nome, dataNascimento, rg, cpf, qtdFaltas, idCampus) VALUES(9, 'Reginaldo', '28/02/1996', '28576725', '13855543225', 0, 9)

INSERT INTO Aluno (idCurso, nome, dataNascimento, rg, cpf, qtdFaltas, idCampus) VALUES(10, 'José', '21/11/1996', '78554525', '13855523471', 0, 10)



/* TABELA CARGO */
INSERT INTO Cargo(nome) VALUES('Diretor')

INSERT INTO Cargo(nome) VALUES('Limpeza')

INSERT INTO Cargo(nome) VALUES('Professor')

INSERT INTO Cargo(nome) VALUES('Coordenador')

INSERT INTO Cargo(nome) VALUES('Manutencao')

INSERT INTO Cargo(nome) VALUES('Seguranca')

INSERT INTO Cargo(nome) VALUES('Gerente')

INSERT INTO Cargo(nome) VALUES('Vice Diretor')

INSERT INTO Cargo(nome) VALUES('Atendente')

INSERT INTO Cargo(nome) VALUES('Inspetor')



/* TABELA DIRETOR */ 
INSERT INTO Diretor(idCargo, nome) VALUES(1, 'João')

INSERT INTO Diretor(idCargo, nome) VALUES(1, 'Carlos')

INSERT INTO Diretor(idCargo, nome) VALUES(1, 'Queiroz')

INSERT INTO Diretor(idCargo, nome) VALUES(1, 'Túlio')

INSERT INTO Diretor(idCargo, nome) VALUES(1, 'Joana')

INSERT INTO Diretor(idCargo, nome) VALUES(1, 'Elisangêla')

INSERT INTO Diretor(idCargo, nome) VALUES(1, 'Rosana')

INSERT INTO Diretor(idCargo, nome) VALUES(1, 'Renan')

INSERT INTO Diretor(idCargo, nome) VALUES(1, 'Túlio')

INSERT INTO Diretor(idCargo, nome) VALUES(1, 'Tereza')



/* TABELA LIMPEZA */
INSERT INTO Limpeza(idCargo, nome) VALUES(2, 'Luana')

INSERT INTO Limpeza(idCargo, nome) VALUES(2, 'Luan')

INSERT INTO Limpeza(idCargo, nome) VALUES(2, 'Karine')

INSERT INTO Limpeza(idCargo, nome) VALUES(2, 'Jefferson')

INSERT INTO Limpeza(idCargo, nome) VALUES(2, 'Acácia')

INSERT INTO Limpeza(idCargo, nome) VALUES(2, 'Ramóm')

INSERT INTO Limpeza(idCargo, nome) VALUES(2, 'Júlia')

INSERT INTO Limpeza(idCargo, nome) VALUES(2, 'Lua')

INSERT INTO Limpeza(idCargo, nome) VALUES(2, 'Leandro')

INSERT INTO Limpeza(idCargo, nome) VALUES(2, 'Renan')



/* TABELA PROFESSOR */
INSERT INTO Professor(idCargo, nome) VALUES(3, 'Aristeu')

INSERT INTO Professor(idCargo, nome) VALUES(3, 'Julio')

INSERT INTO Professor(idCargo, nome) VALUES(3, 'Manoel')

INSERT INTO Professor(idCargo, nome) VALUES(3, 'Flavio')

INSERT INTO Professor(idCargo, nome) VALUES(3, 'Joseja')

INSERT INTO Professor(idCargo, nome) VALUES(3, 'Josefina')

INSERT INTO Professor(idCargo, nome) VALUES(3, 'Cristaldo')

INSERT INTO Professor(idCargo, nome) VALUES(3, 'Julia')

INSERT INTO Professor(idCargo, nome) VALUES(3, 'Bruna')

INSERT INTO Professor(idCargo, nome) VALUES(3, 'Barbara')



/* TABELA COORDENADOR */
INSERT INTO Coordenador(idCargo, nome) VALUES(4, 'Cristal')

INSERT INTO Coordenador(idCargo, nome) VALUES(4, 'Ruth')

INSERT INTO Coordenador(idCargo, nome) VALUES(4, 'Queila')

INSERT INTO Coordenador(idCargo, nome) VALUES(4, 'Ciro')

INSERT INTO Coordenador(idCargo, nome) VALUES(4, 'Kleber')

INSERT INTO Coordenador(idCargo, nome) VALUES(4, 'Suzan')

INSERT INTO Coordenador(idCargo, nome) VALUES(4, 'Ketlyn')

INSERT INTO Coordenador(idCargo, nome) VALUES(4, 'Jían')

INSERT INTO Coordenador(idCargo, nome) VALUES(4, 'Julian')

INSERT INTO Coordenador(idCargo, nome) VALUES(4, 'Cacau')



/* TABELA MANUTENCAO */
INSERT INTO Manutencao(idCargo, nome) VALUES(5, 'Carlos')

INSERT INTO Manutencao(idCargo, nome) VALUES(5, 'Ronaldo')

INSERT INTO Manutencao(idCargo, nome) VALUES(5, 'Felipe')

INSERT INTO Manutencao(idCargo, nome) VALUES(5, 'Ronald')

INSERT INTO Manutencao(idCargo, nome) VALUES(5, 'Joseja')

INSERT INTO Manutencao(idCargo, nome) VALUES(5, 'Jose')

INSERT INTO Manutencao(idCargo, nome) VALUES(5, 'Carleto')

INSERT INTO Manutencao(idCargo, nome) VALUES(5, 'Bruno')

INSERT INTO Manutencao(idCargo, nome) VALUES(5, 'Marina')

INSERT INTO Manutencao(idCargo, nome) VALUES(5, 'Cleber')



/* TABELA SEGURANCA */
INSERT INTO Seguranca(idCargo, nome) VALUES(6, 'Gon')

INSERT INTO Seguranca(idCargo, nome) VALUES(6, 'Lito')

INSERT INTO Seguranca(idCargo, nome) VALUES(6, 'Sul')

INSERT INTO Seguranca(idCargo, nome) VALUES(6, 'Rodrigo')

INSERT INTO Seguranca(idCargo, nome) VALUES(6, 'Ronald')

INSERT INTO Seguranca(idCargo, nome) VALUES(6, 'Lipe')

INSERT INTO Seguranca(idCargo, nome) VALUES(6, 'Visconde')

INSERT INTO Seguranca(idCargo, nome) VALUES(6, 'Zuan')

INSERT INTO Seguranca(idCargo, nome) VALUES(6, 'Quely')

INSERT INTO Seguranca(idCargo, nome) VALUES(6, 'Xio')



/* TABELA FUNCIONARIO_POSSUI_CARGO */
INSERT INTO Funcionario_possui_cargo(numMatriculaFunc, idCargo) VALUES(1, 1)

INSERT INTO Funcionario_possui_cargo(numMatriculaFunc, idCargo) VALUES(2, 2)

INSERT INTO Funcionario_possui_cargo(numMatriculaFunc, idCargo) VALUES(3, 3)

INSERT INTO Funcionario_possui_cargo(numMatriculaFunc, idCargo) VALUES(4, 4)

INSERT INTO Funcionario_possui_cargo(numMatriculaFunc, idCargo) VALUES(5, 5)

INSERT INTO Funcionario_possui_cargo(numMatriculaFunc, idCargo) VALUES(6, 6)

INSERT INTO Funcionario_possui_cargo(numMatriculaFunc, idCargo) VALUES(7, 7)

INSERT INTO Funcionario_possui_cargo(numMatriculaFunc, idCargo) VALUES(8, 8)

INSERT INTO Funcionario_possui_cargo(numMatriculaFunc, idCargo) VALUES(9, 9)

INSERT INTO Funcionario_possui_cargo(numMatriculaFunc, idCargo) VALUES(10,10)



/* TABELA ALUNO_MATRICULA_CURSO */
INSERT INTO Aluno_matricula_curso(numMatriculaAluno, idCurso) VALUES(1, 1)

INSERT INTO Aluno_matricula_curso(numMatriculaAluno, idCurso) VALUES(2, 2)

INSERT INTO Aluno_matricula_curso(numMatriculaAluno, idCurso) VALUES(3, 3)

INSERT INTO Aluno_matricula_curso(numMatriculaAluno, idCurso) VALUES(4, 4)

INSERT INTO Aluno_matricula_curso(numMatriculaAluno, idCurso) VALUES(5, 5)

INSERT INTO Aluno_matricula_curso(numMatriculaAluno, idCurso) VALUES(6, 6)

INSERT INTO Aluno_matricula_curso(numMatriculaAluno, idCurso) VALUES(7, 7)

INSERT INTO Aluno_matricula_curso(numMatriculaAluno, idCurso) VALUES(8, 8)

INSERT INTO Aluno_matricula_curso(numMatriculaAluno, idCurso) VALUES(9, 9)

INSERT INTO Aluno_matricula_curso(numMatriculaAluno, idCurso) VALUES(10, 10)



/* TABELA DISCIPLINA */
INSERT INTO Disciplina(nome, modalidade, cargaHoraria) VALUES('Banco de dados', 'P', 80)

INSERT INTO Disciplina(nome, modalidade, cargaHoraria) VALUES('Pesquisa de Mercado', 'EAD', 80)

INSERT INTO Disciplina(nome, modalidade, cargaHoraria) VALUES('Comunicação ', 'EAD', 40)

INSERT INTO Disciplina(nome, modalidade, cargaHoraria) VALUES('Desafios Contemporâneos ', 'P', 40)

INSERT INTO Disciplina(nome, modalidade, cargaHoraria) VALUES('Optativa', 'EAD', 80)

INSERT INTO Disciplina(nome, modalidade, cargaHoraria) VALUES('Laboratório', 'P', 80)

INSERT INTO Disciplina(nome, modalidade, cargaHoraria) VALUES('Técnica e Dietética', 'EAD', 40)

INSERT INTO Disciplina(nome, modalidade, cargaHoraria) VALUES('Legislação', 'EAD', 80)

INSERT INTO Disciplina(nome, modalidade, cargaHoraria) VALUES('Direito Penal', 'P', 80)

INSERT INTO Disciplina(nome, modalidade, cargaHoraria) VALUES('Matemática', 'P', 80)



/* TABELA ALUNO_CURSA_DISCIPLINA */
INSERT INTO Aluno_cursa_disciplina(numMatriculaAluno, idDisciplina) VALUES(1, 1)

INSERT INTO Aluno_cursa_disciplina(numMatriculaAluno, idDisciplina) VALUES(2, 2)

INSERT INTO Aluno_cursa_disciplina(numMatriculaAluno, idDisciplina) VALUES(3, 3)

INSERT INTO Aluno_cursa_disciplina(numMatriculaAluno, idDisciplina) VALUES(4, 4)

INSERT INTO Aluno_cursa_disciplina(numMatriculaAluno, idDisciplina) VALUES(5, 5)

INSERT INTO Aluno_cursa_disciplina(numMatriculaAluno, idDisciplina) VALUES(6, 6)

INSERT INTO Aluno_cursa_disciplina(numMatriculaAluno, idDisciplina) VALUES(7, 7)

INSERT INTO Aluno_cursa_disciplina(numMatriculaAluno, idDisciplina) VALUES(8, 8)

INSERT INTO Aluno_cursa_disciplina(numMatriculaAluno, idDisciplina) VALUES(9, 9)

INSERT INTO Aluno_cursa_disciplina(numMatriculaAluno, idDisciplina) VALUES(10, 10)



/* TABELA CURSO_POSSUI_DISCIPLINA */
INSERT INTO Curso_possui_disciplina(idCurso, idDisciplina) VALUES(1, 1)

INSERT INTO Curso_possui_disciplina(idCurso, idDisciplina) VALUES(2, 2)

INSERT INTO Curso_possui_disciplina(idCurso, idDisciplina) VALUES(3, 3)

INSERT INTO Curso_possui_disciplina(idCurso, idDisciplina) VALUES(4, 4)

INSERT INTO Curso_possui_disciplina(idCurso, idDisciplina) VALUES(5, 5)

INSERT INTO Curso_possui_disciplina(idCurso, idDisciplina) VALUES(6, 6)

INSERT INTO Curso_possui_disciplina(idCurso, idDisciplina) VALUES(7, 7)

INSERT INTO Curso_possui_disciplina(idCurso, idDisciplina) VALUES(8, 8)

INSERT INTO Curso_possui_disciplina(idCurso, idDisciplina) VALUES(9, 9)

INSERT INTO Curso_possui_disciplina(idCurso, idDisciplina) VALUES(10, 10)



/* TABELA PROFESSOR_MINISTRA_DISCIPLINA */
INSERT INTO Professor_ministra_disciplina(idCargoProf, idDisciplina) VALUES(1, 1)

INSERT INTO Professor_ministra_disciplina(idCargoProf, idDisciplina) VALUES(2, 2)

INSERT INTO Professor_ministra_disciplina(idCargoProf, idDisciplina) VALUES(3, 3)

INSERT INTO Professor_ministra_disciplina(idCargoProf, idDisciplina) VALUES(4, 4)

INSERT INTO Professor_ministra_disciplina(idCargoProf, idDisciplina) VALUES(5, 5)

INSERT INTO Professor_ministra_disciplina(idCargoProf, idDisciplina) VALUES(6, 6)

INSERT INTO Professor_ministra_disciplina(idCargoProf, idDisciplina) VALUES(7, 7)

INSERT INTO Professor_ministra_disciplina(idCargoProf, idDisciplina) VALUES(8, 8)

INSERT INTO Professor_ministra_disciplina(idCargoProf, idDisciplina) VALUES(9, 9)

INSERT INTO Professor_ministra_disciplina(idCargoProf, idDisciplina) VALUES(10, 10)



/* TABELA COORDENADOR_DEFINE_CURSO */
INSERT INTO Coordenador_define_curso(idCargoCoordenador, idCurso) VALUES(1, 1)

INSERT INTO Coordenador_define_curso(idCargoCoordenador, idCurso) VALUES(2, 2)

INSERT INTO Coordenador_define_curso(idCargoCoordenador, idCurso) VALUES(3, 3)

INSERT INTO Coordenador_define_curso(idCargoCoordenador, idCurso) VALUES(4, 4)

INSERT INTO Coordenador_define_curso(idCargoCoordenador, idCurso) VALUES(5, 5)

INSERT INTO Coordenador_define_curso(idCargoCoordenador, idCurso) VALUES(6, 6)

INSERT INTO Coordenador_define_curso(idCargoCoordenador, idCurso) VALUES(7, 7)

INSERT INTO Coordenador_define_curso(idCargoCoordenador, idCurso) VALUES(8, 8)

INSERT INTO Coordenador_define_curso(idCargoCoordenador, idCurso) VALUES(9, 9)

INSERT INTO Coordenador_define_curso(idCargoCoordenador, idCurso) VALUES(10, 10)



/* TABELA NOTAS */
INSERT INTO Notas(numMatriculaAluno, nota1, nota2) VALUES(1, 10, 4)

INSERT INTO Notas(numMatriculaAluno, nota1, nota2) VALUES(2, 9, 5)

INSERT INTO Notas(numMatriculaAluno, nota1, nota2) VALUES(3, 10, 6)

INSERT INTO Notas(numMatriculaAluno, nota1, nota2) VALUES(4, 4, 10)

INSERT INTO Notas(numMatriculaAluno, nota1, nota2) VALUES(5, 5, 0)

INSERT INTO Notas(numMatriculaAluno, nota1, nota2) VALUES(6, 3, 10)

INSERT INTO Notas(numMatriculaAluno, nota1, nota2) VALUES(7, 2, 4)

INSERT INTO Notas(numMatriculaAluno, nota1, nota2) VALUES(8, 10, 3)

INSERT INTO Notas(numMatriculaAluno, nota1, nota2) VALUES(9, 10, 7)

INSERT INTO Notas(numMatriculaAluno, nota1, nota2) VALUES(10, 9, 8)



/* TABELA ALUNO_CONSULTA_NOTAS */
INSERT INTO Aluno_consulta_notas(numMatriculaAluno, numMatriculaAlunoNotas) VALUES(1, 1)

INSERT INTO Aluno_consulta_notas(numMatriculaAluno, numMatriculaAlunoNotas) VALUES(2, 2)

INSERT INTO Aluno_consulta_notas(numMatriculaAluno, numMatriculaAlunoNotas) VALUES(3, 3)

INSERT INTO Aluno_consulta_notas(numMatriculaAluno, numMatriculaAlunoNotas) VALUES(4, 4)

INSERT INTO Aluno_consulta_notas(numMatriculaAluno, numMatriculaAlunoNotas) VALUES(5, 5)

INSERT INTO Aluno_consulta_notas(numMatriculaAluno, numMatriculaAlunoNotas) VALUES(6, 6)

INSERT INTO Aluno_consulta_notas(numMatriculaAluno, numMatriculaAlunoNotas) VALUES(7, 7)

INSERT INTO Aluno_consulta_notas(numMatriculaAluno, numMatriculaAlunoNotas) VALUES(8, 8)

INSERT INTO Aluno_consulta_notas(numMatriculaAluno, numMatriculaAlunoNotas) VALUES(9, 9)

INSERT INTO Aluno_consulta_notas(numMatriculaAluno, numMatriculaAlunoNotas) VALUES(10, 10)



/* TABELA PROFESSOR_LANCA_NOTAS */
INSERT INTO Professor_lanca_notas(idCargoProfessor, numMatriculaAlunoNotas) VALUES(1, 1)

INSERT INTO Professor_lanca_notas(idCargoProfessor, numMatriculaAlunoNotas) VALUES(2, 2)

INSERT INTO Professor_lanca_notas(idCargoProfessor, numMatriculaAlunoNotas) VALUES(3, 3)

INSERT INTO Professor_lanca_notas(idCargoProfessor, numMatriculaAlunoNotas) VALUES(4, 4)

INSERT INTO Professor_lanca_notas(idCargoProfessor, numMatriculaAlunoNotas) VALUES(5, 5)

INSERT INTO Professor_lanca_notas(idCargoProfessor, numMatriculaAlunoNotas) VALUES(6, 6)

INSERT INTO Professor_lanca_notas(idCargoProfessor, numMatriculaAlunoNotas) VALUES(7, 7)

INSERT INTO Professor_lanca_notas(idCargoProfessor, numMatriculaAlunoNotas) VALUES(8, 8)

INSERT INTO Professor_lanca_notas(idCargoProfessor, numMatriculaAlunoNotas) VALUES(9, 9)

INSERT INTO Professor_lanca_notas(idCargoProfessor, numMatriculaAlunoNotas) VALUES(10, 10)



/* TABELA HABILITACOES */
INSERT INTO Habilitacoes(nome) VALUES('Doutorado') 

INSERT INTO Habilitacoes(nome) VALUES('Mestardo') 

INSERT INTO Habilitacoes(nome) VALUES('Doutorado')
 
INSERT INTO Habilitacoes(nome) VALUES('Bacharel') 

INSERT INTO Habilitacoes(nome) VALUES('Doutorado')
 
INSERT INTO Habilitacoes(nome) VALUES('MBA') 

INSERT INTO Habilitacoes(nome) VALUES('Doutorado') 

INSERT INTO Habilitacoes(nome) VALUES('Pós Graduado') 

INSERT INTO Habilitacoes(nome) VALUES('Doutorado') 

INSERT INTO Habilitacoes(nome) VALUES('Doutorado')



/* TABELA COORDENADOR_POSSUI_HABILITACOES */
INSERT INTO Coordenador_possui_habilitacoes(idCargoCoordenador, idHabilitacao) VALUES(1, 1)

INSERT INTO Coordenador_possui_habilitacoes(idCargoCoordenador, idHabilitacao) VALUES(2, 2)

INSERT INTO Coordenador_possui_habilitacoes(idCargoCoordenador, idHabilitacao) VALUES(3, 3)

INSERT INTO Coordenador_possui_habilitacoes(idCargoCoordenador, idHabilitacao) VALUES(4, 4)

INSERT INTO Coordenador_possui_habilitacoes(idCargoCoordenador, idHabilitacao) VALUES(5, 5)

INSERT INTO Coordenador_possui_habilitacoes(idCargoCoordenador, idHabilitacao) VALUES(6, 6)

INSERT INTO Coordenador_possui_habilitacoes(idCargoCoordenador, idHabilitacao) VALUES(7, 7)

INSERT INTO Coordenador_possui_habilitacoes(idCargoCoordenador, idHabilitacao) VALUES(8, 8)

INSERT INTO Coordenador_possui_habilitacoes(idCargoCoordenador, idHabilitacao) VALUES(9, 9)

INSERT INTO Coordenador_possui_habilitacoes(idCargoCoordenador, idHabilitacao) VALUES(10, 10)
 


/* TABELA PROFESSOR_POSSUI_HABILITACOES */
INSERT INTO Professor_possui_habilitacoes(idCargoProfessor, idHabilitacao) VALUES(1, 1)

INSERT INTO Professor_possui_habilitacoes(idCargoProfessor, idHabilitacao) VALUES(2, 2)

INSERT INTO Professor_possui_habilitacoes(idCargoProfessor, idHabilitacao) VALUES(3, 3)

INSERT INTO Professor_possui_habilitacoes(idCargoProfessor, idHabilitacao) VALUES(4, 4)

INSERT INTO Professor_possui_habilitacoes(idCargoProfessor, idHabilitacao) VALUES(5, 5)

INSERT INTO Professor_possui_habilitacoes(idCargoProfessor, idHabilitacao) VALUES(6, 6)

INSERT INTO Professor_possui_habilitacoes(idCargoProfessor, idHabilitacao) VALUES(7, 7)

INSERT INTO Professor_possui_habilitacoes(idCargoProfessor, idHabilitacao) VALUES(8, 8)

INSERT INTO Professor_possui_habilitacoes(idCargoProfessor, idHabilitacao) VALUES(9, 9)

INSERT INTO Professor_possui_habilitacoes(idCargoProfessor, idHabilitacao) VALUES(10, 10)



/* TABELA CURSO_POSSUI_HABILITACOES */
INSERT INTO Curso_possui_habilitacoes(idCurso, idHabilitacao) VALUES(1, 1)

INSERT INTO Curso_possui_habilitacoes(idCurso, idHabilitacao) VALUES(2, 2)

INSERT INTO Curso_possui_habilitacoes(idCurso, idHabilitacao) VALUES(3, 3)

INSERT INTO Curso_possui_habilitacoes(idCurso, idHabilitacao) VALUES(4, 4)

INSERT INTO Curso_possui_habilitacoes(idCurso, idHabilitacao) VALUES(5, 5)

INSERT INTO Curso_possui_habilitacoes(idCurso, idHabilitacao) VALUES(6, 6)

INSERT INTO Curso_possui_habilitacoes(idCurso, idHabilitacao) VALUES(7, 7)

INSERT INTO Curso_possui_habilitacoes(idCurso, idHabilitacao) VALUES(8, 8)

INSERT INTO Curso_possui_habilitacoes(idCurso, idHabilitacao) VALUES(9, 9)

INSERT INTO Curso_possui_habilitacoes(idCurso, idHabilitacao) VALUES(10, 10)



/* TABELA DISCIPLINA_POSSUI_HABILITACOES */
INSERT INTO Disciplina_possui_habilitacoes(idDisciplina, idHabilitacao) VALUES(1, 1)

INSERT INTO Disciplina_possui_habilitacoes(idDisciplina, idHabilitacao) VALUES(2, 2)

INSERT INTO Disciplina_possui_habilitacoes(idDisciplina, idHabilitacao) VALUES(3, 3)

INSERT INTO Disciplina_possui_habilitacoes(idDisciplina, idHabilitacao) VALUES(4, 4)

INSERT INTO Disciplina_possui_habilitacoes(idDisciplina, idHabilitacao) VALUES(5, 5)

INSERT INTO Disciplina_possui_habilitacoes(idDisciplina, idHabilitacao) VALUES(6, 6)

INSERT INTO Disciplina_possui_habilitacoes(idDisciplina, idHabilitacao) VALUES(7, 6)

INSERT INTO Disciplina_possui_habilitacoes(idDisciplina, idHabilitacao) VALUES(8, 8)

INSERT INTO Disciplina_possui_habilitacoes(idDisciplina, idHabilitacao) VALUES(9, 9)

INSERT INTO Disciplina_possui_habilitacoes(idDisciplina, idHabilitacao) VALUES(10, 10)



/* TABELA EQUIPAMENTO */
INSERT INTO Equipamento(nome, qntdDisponivel) VALUES('Papel', 5)

INSERT INTO Equipamento(nome, qntdDisponivel) VALUES('Apagador', 5)

INSERT INTO Equipamento(nome, qntdDisponivel) VALUES('Projetor', 5)

INSERT INTO Equipamento(nome, qntdDisponivel) VALUES('Canetão', 5)

INSERT INTO Equipamento(nome, qntdDisponivel) VALUES('Lápis de cor', 5)

INSERT INTO Equipamento(nome, qntdDisponivel) VALUES('Tinta', 5)

INSERT INTO Equipamento(nome, qntdDisponivel) VALUES('Giz de cera', 5)

INSERT INTO Equipamento(nome, qntdDisponivel) VALUES('Jaleco', 5)

INSERT INTO Equipamento(nome, qntdDisponivel) VALUES('Tablet', 5)

INSERT INTO Equipamento(nome, qntdDisponivel) VALUES('Projetor', 5)



/* TABELA EQUIPAMENTO */
INSERT INTO Professor_solicita_equipamento(idCargoProfessor, idEquipamento) VALUES(1, 1)

INSERT INTO Professor_solicita_equipamento(idCargoProfessor, idEquipamento) VALUES(2, 2)

INSERT INTO Professor_solicita_equipamento(idCargoProfessor, idEquipamento) VALUES(3, 3)

INSERT INTO Professor_solicita_equipamento(idCargoProfessor, idEquipamento) VALUES(4, 4)

INSERT INTO Professor_solicita_equipamento(idCargoProfessor, idEquipamento) VALUES(5, 5)

INSERT INTO Professor_solicita_equipamento(idCargoProfessor, idEquipamento) VALUES(6, 6)

INSERT INTO Professor_solicita_equipamento(idCargoProfessor, idEquipamento) VALUES(7, 7)

INSERT INTO Professor_solicita_equipamento(idCargoProfessor, idEquipamento) VALUES(8, 8)

INSERT INTO Professor_solicita_equipamento(idCargoProfessor, idEquipamento) VALUES(9, 9)

INSERT INTO Professor_solicita_equipamento(idCargoProfessor, idEquipamento) VALUES(10, 10)