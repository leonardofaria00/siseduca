<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>

<tags:pageTemplate titulo="corpo">

	<h2>Formulário de Cadastro!</h2>
	<form:form action="${s:mvcUrl('PC#salvar').build()}" method="post" commandName="pessoa">
		<div class="form-row">
			<div class="col-sm-6">
				<label for="forNome">Nome:</label>
				<input type="text" class="form-control" id="forNome" placeholder="Enter name" name="nome" required="required" autofocus>
				<small id="forNome" class="form-text text-muted">We'll never share your name with anyone else.</small>
				<form:errors path="nome" />
			</div>
		</div>
		
		<br>
		<div class="form-row">
			<div class="col-sm-6">
				<label for="forIdade">Idade:</label>
				<input type="number" class="form-control" id="forIdade" placeholder="Enter you age" name="idade">
			</div>
		</div>
		
		<br>
		<div class="form-row">
			<div class="col-sm-6">
				<label for="forEndereco">Endereço:</label>
				<input type="text" class="form-control" id="forEndereco" placeholder="Enter Address" name="endereco">
			</div>
		</div>		
		<br>
			
		<button type="reset" class="btn btn-secondary">Limpar</button>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form:form>
</tags:pageTemplate>