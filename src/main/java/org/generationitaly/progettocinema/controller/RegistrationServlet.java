package org.generationitaly.progettocinema.controller;

import java.io.IOException;

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
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
//	private UtenteRepository utenteRepository = new UtenteRepositoryImpl();
	private UtenteService utenteService = new UtenteServiceImpl();

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
		Utente u = utenteService.findByUsername(username);
		
		if(u.getUsername().equals(username)) {
			request.setAttribute("errUser2", "Già in uso");
			hasErrors = true;
		}
		if(u.getEmail().equals(mail)) {
			request.setAttribute("errGmail2", "Già in uso");
			hasErrors = true;
		}

		if (mail.isBlank()) {
			request.setAttribute("errMail", "Campo obbligatori");
			hasErrors = true;
		}
		if (nome.isBlank()) {
			request.setAttribute("errNome", "Campo obbligatori");
			hasErrors = true;
		}
		if (cognome.isBlank()) {
			request.setAttribute("errCognome", "Campo obbligatori");
			hasErrors = true;
		}
		if (username.isBlank()) {
			request.setAttribute("errUser", "Campo obbligatori");
			hasErrors = true;
		}
		if (password.isBlank()) {
			request.setAttribute("errPass", "Campo obbligatori");
			hasErrors = true;
		}
		if (hasErrors) {
			request.getRequestDispatcher("registrationDef.jsp").forward(request, response);
			return;
		}	
		Utente utente = new Utente();
		utente.setEmail(mail);
		utente.setNome(nome);
		utente.setCognome(cognome);
		utente.setUsername(username);
		utente.setPassword(password);
		utenteService.save(utente);
		HttpSession session = request.getSession();
		request.setAttribute("s", "Seleziona..");
		session.setAttribute("username", username);
		response.sendRedirect("login.jsp");
	}

}
