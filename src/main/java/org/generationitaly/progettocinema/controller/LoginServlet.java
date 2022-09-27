package org.generationitaly.progettocinema.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.generationitaly.progettocinema.entity.Utente;
import org.generationitaly.progettocinema.service.UtenteService;
import org.generationitaly.progettocinema.service.impl.UtenteServiceImpl;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	UtenteService utenteService = new UtenteServiceImpl();

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean hasErrors = false;
		if (username.isBlank()) {
			request.setAttribute("errUser", "Username errato");
			hasErrors = true;
		}
		if (password.isBlank()) {
			request.setAttribute("errPass", "Password errata");
			hasErrors = true;
		}
		if (hasErrors) {
			request.getRequestDispatcher("login.jsp").forward(request, response);
			return;
		}
		
		List<Utente> utenti = utenteService.findAll();
		for(Utente u:utenti) {
			System.out.println(u.getNome());
			if(u.getUsername().equals(username) && u.getPassword().equals(password)) {
				response.sendRedirect("tuttiFilm");
			}
		}
		request.getRequestDispatcher("registration.jsp").forward(request, response);
	}

}
