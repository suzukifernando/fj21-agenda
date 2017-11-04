<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Lista Contatos</title>
	</head>
	<body>
		<c:import url="cabecalho.jsp"/>
		<!-- Cria a DAO -->
		<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao"/>
		
		<table border="1">
			<tr>
				<th>Nome</th>
				<th>Email</th>
				<th>Endereço</th>
				<th>Data de Nascimento</th>
			</tr>	
			<!-- Percorre contatos montando as linhas da tabela -->	
			<c:forEach var="contato" items="${dao.lista}">
				<tr>
					<td>${contato.nome}</td>
					<td>
					<c:choose>
							<c:when test="${not empty contato.email}">
								<a href="mailto:${contato.email}">${contato.email }</a>	
							</c:when>	
							
							<c:when test="${empty contato.email }">
								E-mail não informado
							</c:when>	
					</c:choose>		
					</td>
					<td>${contato.endereco}</td>
					<td><fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyy"/></td>
				</tr>	
			</c:forEach>
		</table>
		<c:import url="rodape.jsp"/>
	</body>
</html>