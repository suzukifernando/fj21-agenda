package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hora")
public class Hora extends HttpServlet{
	private int contador = 0;
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		contador ++;
		SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
		Date d = new Date();
		String html = "<html>";
		html +="<head>";
		html +=" <meta http-equiv=\"Content-Type\" content=\"text/html;charset=ISO-8859-1\"> ";
		html +="</head>";
		html += "<body>";
		html += "<h1>Hora no Japão</h1>";
		String horaFormatada = sdf.format(d);
		html += "<p>"+horaFormatada+"</p>";
		html += "o contador é: " + contador;
		html += "</body>";
		html += "</html>";
		PrintWriter pw = response.getWriter();
		pw.println(html);
		
		
	}

}
