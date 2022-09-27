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
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	UtenteService utenteService = new UtenteServiceImpl();

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mail = request.getParameter("mail");
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean hasErrors = false;
		if (mail.isBlank()) {
			request.setAttribute("errUser", "Campo obbligatori");
			hasErrors = true;
		}
		if (nome.isBlank()) {
			request.setAttribute("errUser", "Campo obbligatori");
			hasErrors = true;
		}
		if (cognome.isBlank()) {
			request.setAttribute("errUser", "Campo obbligatori");
			hasErrors = true;
		}
		if (username.isBlank()) {
			request.setAttribute("errUser", "Campo obbligatori");
			hasErrors = true;
		}
		if (password.isBlank()) {
			request.setAttribute("errUser", "Campo obbligatori");
			hasErrors = true;
		}
		if (hasErrors) {
			request.getRequestDispatcher("registration.jsp").forward(request, response);
			return;
		}
		List<Utente> utenti = utenteService.findAll();
		for(Utente u:utenti) {
			if(u.getUsername().equals(username) && u.getPassword().equals(password) && u.getEmail().equals(mail)) {
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		}
		Utente utente = new Utente();
		utente.setEmail(mail);
		utente.setNome(nome);
		utente.setCognome(cognome);
		utente.setUsername(username);
		utente.setPassword(password);
		utenteService.save(utente);
		response.sendRedirect("tuttiFilm");
	}

}
