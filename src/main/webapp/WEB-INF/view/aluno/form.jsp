<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<c:url value="/resources/css" var="cssPath" />
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css">
<style type="text/css">
body {
	padding: 20px; 0px;
}
</style>
<title>Gerenciamento Educacional!</title>
</head>
<body class="container">
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="${s:mvcUrl('HC#index').build()}">Home</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#conteudoNavbarSuportado"
			aria-controls="conteudoNavbarSuportado" aria-expanded="false"
			aria-label="Alterna navegação">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="conteudoNavbarSuportado">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="${s:mvcUrl('AC#index').build()}">Lista de Alunos <span
						class="sr-only">(página atual)</span></a></li>
				<li class="nav-item active"><a class="nav-link"
					href="${s:mvcUrl('AC#form').build()}">Cadastro de Alunos <span
						class="sr-only">(página atual)</span></a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Pesquisar" aria-label="Pesquisar">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Pesquisar</button>
			</form>
		</div>
	</nav>
	<h1>Formulário de Alunos!</h1>

	<form:form action="${s:mvcUrl('AC#salvar').build()}" method="post"
		commandName="aluno">
		<div class="form-row">
			<div class="col">
				<label for="forNome">Nome:</label> <input type="text"
					class="form-control" id="forNome" placeholder="Enter name"
					name="nome" autofocus> <small id="forNome"
					class="form-text text-muted">We'll never share your name
					with anyone else.</small>
				<form:errors path="nome" />
			</div>
			<div class="col">
				<label for="forCPF">CPF:</label> <input type="text"
					class="form-control" id="forCPF" placeholder="000.000.000-00"
					name="cpf"> <small id="forCPF" class="form-text text-muted">We'll
					never share your CPF with anyone else.</small>
			</div>
		</div>
		<br>
		<div class="form-row">
			<div class="col">
				<label for="forEmail">Email:</label> <input type="email"
					class="form-control" id="forEmail" placeholder="Enter Email"
					name="email">
			</div>
			<div class="col">
				<label for="forDataNascimento">Data de Nascimento:</label> <input
					type="date" class="form-control" id="forDataNascimento"
					placeholder="Enter birthday" name="dataNascimento">
			</div>
		</div>
		<br>
		<div class="form-row">
			<div class="col">
				<label for="forTelefone">Telefone:</label> <input type="text"
					class="form-control" id="forTelefone" placeholder="(00) 00000-0000"
					name="telefone">
			</div>
			<div class="col">
				<label for="forEndereco">Endereço:</label> <input type="text"
					class="form-control" id="forEndereco" placeholder="Enter Address"
					name="endereco">
			</div>
		</div>
		<br>
		<div class="form-row">
			<div class="col">
				<label for="forMatricula">Matrícula:</label> <input type="text"
					class="form-control" id="forMatricula"
					placeholder="Enter Matrícula" name="matricula">
			</div>
			<div class="col">
				<label for="forTurma">Turma:</label> <select class="form-control"
					name="turma">
					<option value="">.::Selecione::.</option>
					<option value="TURMA1SEMESTRE">1º SEMESTRE</option>
					<option value="TURMA2SEMESTRE">2º SEMESTRE</option>
				</select>
				<!-- 			<input type="text" class="form-control" id="forTurma" placeholder="Enter Turma" name="turma">  -->
			</div>
		</div>
		<br>
		<div class="form-row">
			<div class="col-sm-6 col-lg-6 col-xm-6">
				<label for="forMateria">Matéria:</label> <select
					class="form-control" name="materia">
					<option value="">.::Selecione::.</option>
					<option value="ECONOMIA">ECONOMIA</option>
					<option value="GESTAODEPESSOAS">GESTAO DE PESSOAS</option>
					<option value="EMPREENDEDORISMO">EMPREENDEDORISMO</option>
					<option value="LEITURAPRODUCAODETEXTO">LEITURA E PRODUCAO
						DE TEXTO</option>
					<option value="SOCIOLOGIA">SOCIOLOGIA</option>
				</select>
				<!-- 			<input type="text" class="form-control" id="forMateria" placeholder="Enter Matéria" name="materia">  -->
			</div>
		</div>
		<br>
		<button type="submit" class="btn btn-primary">Submit</button>
		<button type="reset" class="btn btn-secondary">Limpar</button>
	</form:form>
</body>
</html>