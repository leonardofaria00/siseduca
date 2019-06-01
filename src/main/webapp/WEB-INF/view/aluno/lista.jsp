<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>

<tags:pageTemplate titulo="Gerenciamento Educacional!">
		
	<h2>Lista de Alunos</h2>
	<%-- 	<c:if test="${sucesso}" var="sucesso" scope="session"> --%>
	<div class="alert alert-success alert-dismissible fade show"
		role="alert">
		<%-- 			${sucesso} --%>
		Usuário cadastrado com sucesso!
		<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
	<%-- 	</c:if> --%>
	<table class="table table-hover table-condensed table-striped table-borderless table-sm">
		<thead class="thead-light">
			<tr class="text-center">
				<th scope="col">#</th>
				<th scope="col">Código</th>
				<th scope="col">Nome</th>
				<th scope="col">Matrícula</th>
				<th scope="col">Email</th>
				<th scope="col">Telefone</th>
				<th scope="col">Endereço</th>
				<th scope="col">Ações</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${alunos}" var="p" varStatus="status">
				<tr class="text-center">
					<th scope="row">${status.index +1}</th>
					<td>${p.id}</td>
					<td>${p.nome}</td>
					<td>${p.matricula}</td>
					<td>${p.email}</td>
					<td>${p.telefone}</td>
					<td>${p.endereco}</td>
					<td>
						<a href="/siseduca/alunos/detalhes/${p.id}">
							<i class="fas fa-search"></i>
						</a>
						<a href="/siseduca/alunos/lista/${p.id}">
							<i class="fas fa-pen"></i>
						</a>
						<a href="/siseduca/alunos/delete/${p.id}">
							<i class="fas fa-trash-alt"></i>
						</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</tags:pageTemplate>