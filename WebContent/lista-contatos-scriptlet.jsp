<%@ page import="java.util.*, br.com.caelum.agenda.modelo.*, br.com.caelum.agenda.dao.*,java.text.SimpleDateFormat;" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Lista Contatos</title>
	</head>
	<body>
		<table border="1" width="100%">
			<%
				ContatoDao dao = new ContatoDao();
				List<Contato> contatos = dao.getLista();
				SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			%>	
				<tr>
					<th>Nome</td>
					<th>E-mail</td>
					<th>Endereço</td>
					<th>Data Nascimento</td>
				</tr>	
			<%	
				for (Contato contato : contatos) {
			%>
				<tr>
					<td><%=contato.getNome()%></td>
					<td><%=contato.getEmail()%></td>
					<td><%=contato.getEndereco()%></td>
					<td><%=sdf.format(contato.getDataNascimento().getTime())%></td>
				</tr>	
				<%	
				}
				%>
		</table>
	</body>
</html>