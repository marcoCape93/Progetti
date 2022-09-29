package org.generationitaly.progettocinema.controller;

import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.generationitaly.progettocinema.entity.Utente;
import org.generationitaly.progettocinema.service.UtenteService;
import org.generationitaly.progettocinema.service.impl.UtenteServiceImpl;

/**
 * Servlet implementation class GuestServlet
 */
@WebServlet("/GuestServlet")
public class GuestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private UtenteService utenteService = new UtenteServiceImpl();

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		System.out.println("Sei qui in guest");
		Random random = new Random();
		String username = "";
		List<Utente> utenti =  utenteService.findAll();
		for(Utente u:utenti) {
			do {
				long x = random.nextLong(400000);
				username = "Guest"+x;
			}while((u.getUsername().equals(username)));
		}
		HttpSession session = request.getSession();
		String x = "Seleziona...";
		request.setAttribute("select", x);
		session.setAttribute("username", username);
		response.sendRedirect("home-page.jsp");		
	}
}
