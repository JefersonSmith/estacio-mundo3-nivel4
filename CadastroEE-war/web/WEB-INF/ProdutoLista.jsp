<%-- 
    Document   : ProdutoLista
    Created on : 23 de mai. de 2024, 22:08:01
    Author     : Smith
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="cadastroee.model.Produto" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title class="h3">Lista de Produtos</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .container {
            margin-top: 20px;
        }
        .table th, .table td {
            text-align: center;
        }
        .btn-group {
            display: flex;
            justify-content: center;
        }
        .no-products {
            text-align: center;
            font-style: italic;
            color: #888;
        }
    </style>
</head>
<body class="bg-light">
    <div class="container">
        <h1 class="text-center mb-4">Lista de Produtos</h1>
    
        <div class="text-right mb-3">
            <a href="ServletProdutoFC?acao=formIncluir" class="btn btn-success">Incluir Novo Produto</a>
        </div>

        <table class="table table-striped table-bordered">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Quantidade</th>
                    <th>Preço</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
            <%
                List<Produto> produtos = (List<Produto>) request.getAttribute("produtos");
                if (produtos != null && !produtos.isEmpty()) {
                    for (Produto produto : produtos) {
            %>
            <tr>
                <td><%= produto.getIdProduto() %></td>
                <td><%= produto.getNome() %></td>
                <td><%= produto.getQuantidade() %></td>
                <td><%= produto.getPrecoVenda() %></td>
                <td class="btn-group">
                    <a href="ServletProdutoFC?acao=formAlterar&idProduto=<%= produto.getIdProduto() %>" class="btn btn-primary btn-sm mr-1">Alterar</a>
                    <a href="ServletProdutoFC?acao=excluir&idProduto=<%= produto.getIdProduto() %>" class="btn btn-danger btn-sm">Excluir</a>
                </td>
            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td colspan="5" class="no-products">Nenhum produto disponível.</td>
            </tr>
            <%
                }
            %>
            </tbody>
        </table>
    </div>
</body>
</html>
