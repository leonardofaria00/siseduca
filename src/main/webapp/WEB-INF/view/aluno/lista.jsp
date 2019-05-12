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
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">

<title>Gerenciamento Educacional!</title>
</head>
<body class="container">
	<h1>Lista de Alunos</h1>
	<hr>
		<div class="alert alert-success" role="alert">
			${sucesso}
		</div>
	<table class="table">
		<thead class="thead-dark">
			<tr class="text-center">
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
					<th scope="row">${p.id}</th>
					<td>${p.nome}</td>
<%-- 					<td>${p.cpf}</td> --%>
					<td>${p.matricula}</td>
					<td>${p.email}</td>
					<td>${p.telefone}</td>
					<td>${p.endereco}</td>
					<td>
					<a href="/siseduca/alunos/lista/${p.id}"><i class="fas fa-pen"></i></a>
					<a href="/siseduca/alunos/delete/${p.id}"><i class="fas fa-trash-alt"></i></a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>