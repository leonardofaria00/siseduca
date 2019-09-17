<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<%@ attribute name="titulo" required="true"%>


<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<c:url value="/resources" var="cssPath" />
<link rel="stylesheet" href="${cssPath}/css/bootstrap.min.css">
<%-- <script src="${cssPath}/js/bootstrap.min.js"></script> --%>
<script src="${cssPath}/js/bootstrap.mim.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">

<style type="text/css">
body {
	padding: 20px; 0px;
}
h2{
	padding: 20px; 0px;
}
</style>
<title>Desenvolvimento de Sistemas com Java - Unyleya!</title>
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
        <a class="nav-link" href="${s:mvcUrl('PC#form').build()}">Cadastro de Pessoas <span class="sr-only">(página atual)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="${s:mvcUrl('PC#index').build()}">Lista de Pessoas <span class="sr-only">(página atual)</span></a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Pesquisar" aria-label="Pesquisar">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Pesquisar</button>
    </form>
  </div>
</nav>