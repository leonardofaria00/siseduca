<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>

<tags:pageTemplate titulo="Gerenciamento Educacional!">

	<h2>Editar Aluno!</h2>
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
			<input type="text" class="form-control" id="forCPF" name="cpf" value="${aluno.cpf}" required="required" min="10" maxlength="14"> 
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
</tags:pageTemplate>