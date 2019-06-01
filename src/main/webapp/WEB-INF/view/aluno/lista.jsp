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
	<c:if test="${sucesso}">
		<div class="alert alert-success" role="alert">
			${sucesso}
		</div>
	</c:if>
	<h1>Lista de Alunos</h1>
	<hr>

	<table class="table table-hover table-condensed table-striped table-borderless table-sm">
		<thead class="thead-light">
			<tr class="text-center">
				<th scope="col">#</th>
				<th scope="col">Código</th>
				<th scope="col">Nome</th>
<!-- 				<th scope="col">CPF</th> -->
				<th scope="col">Matrícula</th>				
				<th scope="col">Email</th>								
				<th scope="col">Telefone</th>
				<th scope="col">Endereço</th>
				<th scope="col">Ações</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${alunos}" var="p">
				<tr class="text-center">
					<th scope="row">#</th>
					<th scope="row">${p.id}</th>
					<td>${p.nome}</td>
<%-- 					<td>${p.cpf}</td> --%>
					<td>${p.matricula}</td>
					<td>${p.email}</td>
					<td>${p.telefone}</td>
					<td>${p.endereco}</td>
					<td>
					<a href="/siseduca/alunos/detalhes/${p.id}"><i class="fas fa-search"></i></a>
					<a href="/siseduca/alunos/lista/${p.id}"><i class="fas fa-pen"></i></a>
					<a href="/siseduca/alunos/delete/${p.id}"><i class="fas fa-trash-alt"></i></a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>