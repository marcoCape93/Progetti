package org.generationitaly.progettocinema.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.generationitaly.progettocinema.entity.Attore;
import org.generationitaly.progettocinema.service.AttoreService;
import org.generationitaly.progettocinema.service.impl.AttoreServiceImpl;

/**
 * Servlet implementation class FindAttoreCognome
 */
@WebServlet("/findCognome-attore")
public class FindAttoreCognome extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private AttoreService attoreService = new AttoreServiceImpl();
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String cognome = request.getParameter("cognome");
	Attore attore = attoreService.findByCognome(cognome);
	request.setAttribute("attore", attore);
	request.getRequestDispatcher("schedaAttoreId.jsp").forward(request, response);
	
	}

}
