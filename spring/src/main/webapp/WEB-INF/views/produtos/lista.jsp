<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Livros de Java, Android, iPhone, Ruby, PHP e muito mais -
	Casa do Código</title>
</head>
<body>
	<h1>Lista de produtos</h1>
	<div>
		<p>${sucesso}</p>
	</div>
	<table>
        <tr>
            <td>Link</td>
            <td>Título</td>
            <td>Descrição</td>
            <td>Páginas</td>
        </tr>
        
        <c:forEach items="${produtos}" var="produto">
			<tr>
				<td>${produto.id}</td>
				<td>${produto.titulo}</td>
				<td>${produto.descricao}</td>
				<td>${produto.paginas}</td>
			</tr>        	
        </c:forEach>
    </table>
</body>
</html>