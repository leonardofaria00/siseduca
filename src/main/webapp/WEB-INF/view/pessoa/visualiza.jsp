<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>

<tags:pageTemplate titulo="Gerenciamento Educacional!">

	<h2>Visualiza Pessoa!</h2>
	<form action="/siseduca/pessoas/add" method="post">
	  <div class="form-row">	
		<div class="col">
			<label for="forNome">Nome:</label>
			<input type="hidden" name="id" value="${pessoa.id}"> 
			<input type="text" class="form-control" id="forNome" placeholder="Enter name" name="nome" required="true" value="${pessoa.nome}"> 
			<small id="forNome" class="form-text text-muted">We'll never share your name with anyone else.</small>
		</div>
	  <div class="col">
			<label for="forIdade">Idade:</label> 
			<input type="text" class="form-control" id="forIdade" name="idade" value="${pessoa.idade}" required="required"> 
			<small id="forIdade" class="form-text text-muted">We'll never share your age with anyone else.</small>
		</div>
	  </div>
	  <br>
	  
	  
	    <div class="form-row">		
	  <div class="col">
			<label for="forEndereco">Endereço:</label> 
			<input type="text" class="form-control" id="forEndereco" placeholder="Enter Address" name="endereco" value="${pessoa.endereco}"> 
		</div>
	  </div>	 	
	  <br>
		<button type="submit" class="btn btn-success">Salvar</button>
		<a class="btn btn-secondary" href="${s:mvcUrl('PC#index').build()}">Voltar</a>		
	</form>
</tags:pageTemplate>