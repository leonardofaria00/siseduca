<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>

<tags:pageTemplate titulo="Gerenciamento Educacional!">

	<h2>Formulário de Alunos!</h2>
	<form:form action="${s:mvcUrl('AC#salvar').build()}" method="post" commandName="aluno">
		<div class="form-row">
			<div class="col">
				<label for="forNome">Nome:</label>
				<input type="text" class="form-control" id="forNome" placeholder="Enter name" name="nome" required="required" autofocus>
				<small id="forNome" class="form-text text-muted">We'll never share your name with anyone else.</small>
				<form:errors path="nome" />
			</div>
			
			<div class="col">
				<label for="forCPF">CPF:</label>
				<input type="text" class="form-control" id="forCPF" placeholder="000.000.000-00" name="cpf" required="required" min="10" maxlength="14">
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
			<div class="col-6">
				<label for="forMatricula">Matrícula:</label>
				<input type="text" class="form-control" id="forMatricula" placeholder="Enter Matrícula" name="matricula">
			</div>
		</div>
		<br>

		<button type="submit" class="btn btn-primary">Submit</button>
		<button type="reset" class="btn btn-secondary">Limpar</button>
	</form:form>
</tags:pageTemplate>