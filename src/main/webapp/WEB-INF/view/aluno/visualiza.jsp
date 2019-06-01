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

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
	
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
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conteudoNavbarSuportado" aria-controls="conteudoNavbarSuportado" aria-expanded="false" aria-label="Alterna navegação">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="conteudoNavbarSuportado">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="${s:mvcUrl('AC#index').build()}">Lista de Alunos <span class="sr-only">(página atual)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="${s:mvcUrl('AC#form').build()}">Cadastro de Alunos <span class="sr-only">(página atual)</span></a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Pesquisar" aria-label="Pesquisar">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Pesquisar</button>
    </form>
  </div>
</nav>
<br>
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
		<div class="col-6">
			<label for="forMatricula">Matrícula:</label> 
			<input type="number" class="form-control" id="forMatricula" placeholder="Enter Matrícula" name="matricula" value="${aluno.matricula}"> 
		</div>
	 </div>
	
	  <br>
		<button type="submit" class="btn btn-success">Salvar</button>
		<a class="btn btn-secondary" href="${s:mvcUrl('AC#index').build()}">Voltar</a>		
	</form>
</body>
</html>