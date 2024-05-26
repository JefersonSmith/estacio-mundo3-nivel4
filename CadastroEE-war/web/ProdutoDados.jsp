<%-- 
    Document   : ProdutoDados
    Created on : 23 de mai. de 2024, 22:09:11
    Author     : Smith
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cadastro de Produtos</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body class="container">
    <h1>Cadastro de Produtos</h1>
    
    <form action="ServletProdutoFC" method="post" class="form">
        <input type="hidden" name="acao" value="${empty produto ? 'incluir' : 'alterar'}">
        <c:if test="${not empty produto}">
            <input type="hidden" name="idProduto" value="${produto.idProduto}">
        </c:if>
        
        <div class="mb-3">
            <label for="nome" class="form-label">Nome:</label>
            <input type="text" id="nome" name="nome" value="${empty produto ? '' : produto.nome}" required class="form-control">
        </div>
        
        <div class="mb-3">
            <label for="quantidade" class="form-label">Quantidade:</label>
            <input type="number" id="quantidade" name="quantidade" value="${empty produto ? '' : produto.quantidade}" required class="form-control">
        </div>
        
        <div class="mb-3">
            <label for="precoVenda" class="form-label">Preço de Venda:</label>
            <input type="number" id="precoVenda" name="precoVenda" value="${empty produto ? '' : produto.precoVenda}" required class="form-control">
        </div>
        
        <input type="submit" value="${empty produto ? 'Incluir' : 'Alterar'} DadosProduto" class="btn btn-primary">
    </form>
</body>
</html>