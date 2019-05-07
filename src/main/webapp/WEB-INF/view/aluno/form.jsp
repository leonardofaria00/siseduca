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
	<h1>Formulário de Alunos!</h1>

	<form action="/sgedu/alunos/add" method="post">
	  <div class="form-row">	
		<div class="col">
			<label for="forNome">Nome:</label> 
			<input type="text" class="form-control" id="forNome" placeholder="Enter name" name="nome" required="true"> 
			<small id="forNome" class="form-text text-muted">We'll never share your name with anyone else.</small>
		</div>
	  <div class="col">
			<label for="forCPF">CPF:</label> 
			<input type="text" class="form-control" id="forCPF" placeholder="000.000.000-00" name="cpf"> 
			<small id="forCPF" class="form-text text-muted">We'll never share your CPF with anyone else.</small>
		</div>
	  </div>
	  <br>
	   <div class="form-row">	
		<div class="col">
			<label for="forEmail">Email:</label> 
			<input type="email" class="form-control" id="forEmail" placeholder="Enter Email" name="email"> 
		</div>
	  <div class="col">
			<label for="forDataNascimento">Data de Nascimento:</label> 
			<input type="date" class="form-control" id="forDataNascimento" placeholder="Enter birthday" name="dataNascimento"> 
		</div>
	  </div>
	  <br>
	    <div class="form-row">	
		<div class="col">
			<label for="forTelefone">Telefone:</label> 
			<input type="text" class="form-control" id="forTelefone" placeholder="(00) 00000-0000" name="telefone"> 
		</div>
	  <div class="col">
			<label for="forEndereco">Endereço:</label> 
			<input type="text" class="form-control" id="forEndereco" placeholder="Enter Address" name="endereco"> 
		</div>
	  </div>
	  <br>
	  <div class="form-row">	
		<div class="col">
			<label for="forMatricula">Matrícula:</label> 
			<input type="number" class="form-control" id="forMatricula" placeholder="Enter Matrícula" name="matricula"> 
		</div>
	  <div class="col">
			<label for="forTurma">Turma:</label> 
			 <select class="form-control" name="turma" required="true">
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
			<label for="forMateria">Matéria:</label> 
			<select class="form-control" name="materia" required="true">
			  <option value="">.::Selecione::.</option>
			  <option value="ECONOMIA">ECONOMIA</option>
		      <option value="GESTAODEPESSOAS">GESTAO DE PESSOAS</option>
		      <option value="EMPREENDEDORISMO">EMPREENDEDORISMO</option>
		      <option value="LEITURAPRODUCAODETEXTO">LEITURA E PRODUCAO DE TEXTO</option>
		      <option value="SOCIOLOGIA">SOCIOLOGIA</option>		      
		    </select>
<!-- 			<input type="text" class="form-control" id="forMateria" placeholder="Enter Matéria" name="materia">  -->
		</div>
	  </div>
	  <br>
		<button type="submit" class="btn btn-primary">Submit</button>
		<button type="reset" class="btn btn-secondary">Limpar</button>
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