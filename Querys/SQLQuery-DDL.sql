/* COMANDOS DE CRIAÇÃO E UTILIZAÇÃO DO BANCO */

CREATE DATABASE BDAPS

USE BDAPS
GO

--------------------------------------------------------------

/* COMANDOS DE CRIAÇÃO DAS TABELAS */


CREATE TABLE Campus(
idCampus int primary key identity,
nome varchar(100),
pais varchar(20),
estado varchar(30),
cidade varchar(20),
bairro varchar(50),
rua text,
numeroEndereco int

)

CREATE TABLE Sala(
numSala int,
andar int,
constraint  numSalaAndar primary key (numSala, andar),
idCampus int foreign key references Campus(idCampus)

)

CREATE TABLE SalaComum(
numSala int,
andar int,
numLimiteAlunos int,
constraint  pk_numSalaAndar primary key (numSala, andar),
constraint  fk_numSalaAndar foreign key (numSala, andar) references Sala,
idCampus int foreign key references Campus(idCampus)

)

CREATE TABLE SalaLocal(
numSala int,
andar int,
dataHora datetime,
constraint  pk_numSalaAndarLocal primary key (numSala, andar),
constraint  fk_numSalaAndarLocal foreign key (numSala, andar) references Sala,
idCampus int foreign key references Campus(idCampus)

)

CREATE TABLE SalaColaborador(
numSala int,
andar int,
qntdArmario int,
constraint  pk_numSalaAndarColaborador primary key (numSala, andar),
constraint  fk_numSalaAndarColaborador foreign key (numSala, andar) references Sala,
idCampus int foreign key references Campus(idCampus)

)

CREATE TABLE SalaLaboratorio(
numSala int,
andar int,
constraint  pk_numSalaAndarLaboratorio primary key (numSala, andar),
constraint  fk_numSalaAndarLaboratorio foreign key (numSala, andar) references Sala,
idCampus int foreign key references Campus(idCampus)

)

CREATE TABLE Pessoa(
cpf varchar(15) primary key,
nome varchar(50) not null,
dataNascimento date,
rg varchar(30) not null,
idCampus int foreign key references Campus(idCampus)

)

CREATE TABLE Funcionario(
cpf varchar(15) foreign key references Pessoa(cpf),
numMatricula int primary key identity,
idCampus int foreign key references Campus(idCampus),
nome varchar(70),
dataNascimento date,
rg varchar(30),
salario float,
cargaHoraria int,


)

CREATE TABLE Curso(
idCurso int primary key identity,
nome varchar(50),
modalidade char(3),
valor float,
tipoCurso varchar(25),
cargaHoraria int,
idCampus int foreign key references Campus(idCampus)

)

CREATE TABLE Aluno(
cpf varchar(15) foreign key references Pessoa(cpf),
idCurso int foreign key references Curso(idCurso),
idCampus int foreign key references Campus(idCampus),
numMatricula int primary key identity,
nome varchar(70),
dataNascimento date,
rg varchar(30),
qtdFaltas int,


)


CREATE TABLE Cargo(
idCargo int primary key identity,
nome varchar(30)

)

CREATE TABLE Limpeza(
idCargo int foreign key references Cargo(idCargo),
idCargoLimpeza int primary key identity,
nome varchar(30)

)

CREATE TABLE Manutencao(
idCargo int foreign key references Cargo(idCargo),
idCargoManutencao int primary key identity,
nome varchar(30),

)

CREATE TABLE Seguranca(
idCargo int foreign key references Cargo(idCargo),
idCargoSeguranca int primary key identity,
nome varchar(30)

)

CREATE TABLE Diretor(
idCargo int foreign key references Cargo(idCargo),
idCargoDiretor int primary key identity,
nome varchar(30)

)

CREATE TABLE Coordenador(
idCargo int foreign key references Cargo(idCargo),
idCargoCoordenador int primary key identity,
nome varchar(30)

)

CREATE TABLE Professor(
idCargo int foreign key references Cargo(idCargo),
idCargoProfessor int primary key identity,
nome varchar(30)

)

CREATE TABLE Funcionario_possui_cargo(
numMatriculaFunc int foreign key references Funcionario(numMatricula),
idCargo int foreign key references Cargo(idCargo),
constraint pk_func primary key(numMatriculaFunc, idCargo)

)

CREATE TABLE Aluno_matricula_curso(
numMatriculaAluno int foreign key references Aluno(numMatricula),
idCurso int foreign key references Curso(idCurso),
constraint pk_alunoCurso primary key(numMatriculaAluno, idCurso)

)

CREATE TABLE Disciplina(
idDisciplina int primary key identity,
nome varchar(50),
modalidade varchar(20),
cargaHoraria int


)

CREATE TABLE Aluno_cursa_disciplina(
numMatriculaAluno int foreign key references Aluno(numMatricula),
idDisciplina int foreign key references Disciplina(idDisciplina),
constraint pk_alunoDisciplina primary key (numMatriculaAluno, idDisciplina)

)

CREATE TABLE Curso_possui_disciplina(
idCurso int foreign key references Curso(idCurso),
idDisciplina int foreign key references Disciplina(idDisciplina),
constraint pk_cursoDisciplina primary key (idCurso, idDisciplina)

)

CREATE TABLE Professor_ministra_disciplina(
idCargoProf int foreign key references Professor(idCargoProfessor),
idDisciplina int foreign key references Disciplina(idDisciplina),
constraint pk_professorDisciplina primary key (idCargoProf, idDisciplina)

)

CREATE TABLE Coordenador_define_curso(
idCargoCoordenador int foreign key references Coordenador(idCargoCoordenador),
idCurso int foreign key references Curso(idCurso),
constraint pk_coordenadorCurso primary key (idCargoCoordenador, idCurso)

)

CREATE TABLE Notas(
numMatriculaAluno int primary key,
nota1 float,
nota2 float

)

CREATE TABLE Aluno_consulta_notas(
numMatriculaAluno int foreign key references Aluno(numMatricula),
numMatriculaAlunoNotas int foreign key references Notas(numMatriculaAluno),
constraint pk_alunoNotas primary key (numMatriculaAluno, numMatriculaAlunoNotas)

)

CREATE TABLE Professor_lanca_notas(
idCargoProfessor int foreign key references Professor(idCargoProfessor),
numMatriculaAlunoNotas int foreign key references Notas(numMatriculaAluno),
constraint pk_professorNotas primary key (idCargoProfessor, numMatriculaAlunoNotas)

)

CREATE TABLE Habilitacoes(
idhabilitacao int primary key identity,
nome varchar(50)

)

CREATE TABLE Coordenador_possui_habilitacoes(
idCargoCoordenador int foreign key references Coordenador(idCargoCoordenador),
idHabilitacao int foreign key references Habilitacoes(idHabilitacao),
constraint pk_CoordenadorHabilitacoes primary key (idCargoCoordenador, idHabilitacao)

)

CREATE TABLE Professor_possui_habilitacoes(
idCargoProfessor int foreign key references Professor(idCargoProfessor),
idHabilitacao int foreign key references Habilitacoes(idHabilitacao),
constraint pk_professorHabilitacoes primary key (idCargoProfessor, idHabilitacao)

)

CREATE TABLE Curso_possui_habilitacoes(
idCurso int foreign key references Curso(idCurso),
idHabilitacao int foreign key references Habilitacoes(idHabilitacao),
constraint pk_cursoHabilitacoes primary key (idCurso, idHabilitacao)

)

CREATE TABLE Disciplina_possui_habilitacoes(
idDisciplina int foreign key references Disciplina(idDisciplina),
idHabilitacao int foreign key references Habilitacoes(idHabilitacao),
constraint pk_disciplinaHabilitacoes primary key (idDisciplina, idHabilitacao)

)

CREATE TABLE Equipamento(
idEquipamento int primary key identity,
nome varchar(50),
qntdDisponivel int

)

CREATE TABLE Professor_solicita_equipamento(
idCargoProfessor int foreign key references Professor(idCargoProfessor),
idEquipamento int foreign key references Equipamento(idEquipamento),
constraint pk_professorEquipamento primary key (idCargoProfessor, idEquipamento)

)