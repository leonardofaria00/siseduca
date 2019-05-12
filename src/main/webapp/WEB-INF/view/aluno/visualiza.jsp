<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<title>Gerenciamento Educacional!</title>
</head>
<body class="container">
	<h1>Alteração de Aluno!</h1>

	<form action="/siseduca/alunos/add" method="post">
	  <div class="form-row">	
		<div class="col">
			<label for="forNome">Nome:</label>
			<input type="hidden" name="id" value="${aluno.id}"> 
			<input type="text" class="form-control" id="forNome" placeholder="Enter name" name="nome" required="true" value="${aluno.nome}"> 
			<small id="forNome" class="form-text text-muted">We'll never share your name with anyone else.</small>
		</div>
	  <div class="col">
			<label for="forCPF">CPF:</label> 
			<input type="text" class="form-control" id="forCPF" placeholder="Enter CPF" name="cpf" value="${aluno.cpf}" disabled="true"> 
			<small id="forCPF" class="form-text text-muted">We'll never share your CPF with anyone else.</small>
		</div>
	  </div>
	  <br>
	   <div class="form-row">	
		<div class="col">
			<label for="forEmail">Email:</label> 
			<input type="email" class="form-control" id="forEmail" placeholder="Enter Email" name="email" value="${aluno.email}"> 
		</div>
	  <div class="col">
			<label for="forDataNascimento">Data de Nascimento:</label> 
			<input type="date" class="form-control" id="forDataNascimento" placeholder="Enter birthday" name="dataNascimento" value="${aluno.dataNascimento}"> 
		</div>
	  </div>
	  <br>
	    <div class="form-row">	
		<div class="col">
			<label for="forTelefone">Telefone:</label> 
			<input type="text" class="form-control" id="forTelefone" placeholder="Enter Phone" name="telefone" value="${aluno.telefone}"> 
		</div>
	  <div class="col">
			<label for="forEndereco">Endereço:</label> 
			<input type="text" class="form-control" id="forEndereco" placeholder="Enter Address" name="endereco" value="${aluno.endereco}"> 
		</div>
	  </div>
	  <br>
	  <div class="form-row">	
		<div class="col">
			<label for="forMatricula">Matrícula:</label> 
			<input type="number" class="form-control" id="forMatricula" placeholder="Enter Matrícula" name="matricula" value="${aluno.matricula}"> 
		</div>
	  <div class="col">
			<label for="forTurma">Turma:</label> 
			<input type="text" class="form-control" id="forTurma" placeholder="Enter Turma" name="turma" value="${aluno.turma}"> 
		</div>
	  </div>
	    <br>
	  <div class="form-row">	
		<div class="col-sm-6 col-lg-6 col-xm-6">
			<label for="forMateria">Matéria:</label> 
			<input type="text" class="form-control" id="forMateria" placeholder="Enter Matéria" name="materia" value="${aluno.materia}"> 
		</div>
				<div class="form-group">
		    <label for="exampleFormControlSelect1">Example select</label>
		    <select class="form-control" id="exampleFormControlSelect1">
		      <option>1</option>
		      <option>2</option>
		      <option>3</option>
		      <option>4</option>
		      <option>5</option>
		    </select>
		  </div>
	  </div>
	  <br>
		<button type="submit" class="btn btn-success">Salvar</button>
		<a class="btn btn-secondary" href="/siseduca/alunos/">Voltar</a>		
	</form>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>