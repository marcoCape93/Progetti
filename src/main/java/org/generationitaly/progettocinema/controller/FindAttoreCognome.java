package org.generationitaly.progettocinema.controller;

import java.io.IOException;
import java.util.List;

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
		String cognome=request.getParameter("cognome");
		boolean error2=false;
		if( cognome.isBlank()) {
			List<Attore> attore = attoreService.findAll();
			request.setAttribute("attori", attore);
			request.getRequestDispatcher("AllAttori.jsp").forward(request, response);
		}else if (cognome != null) { 
			List<Attore> attore = attoreService.findByCognome(cognome);
			if(attore.isEmpty()) {
				error2=true;
				attore=attoreService.findAll();
				request.setAttribute("error2", error2);
			}
			request.setAttribute("attori", attore);
			request.getRequestDispatcher("AllAttori.jsp").forward(request, response);
	
	}}

}
