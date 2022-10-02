package org.generationitaly.progettocinema.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.generationitaly.progettocinema.entity.Attore;
import org.generationitaly.progettocinema.service.AttoreService;
import org.generationitaly.progettocinema.service.impl.AttoreServiceImpl;

/**
 * Servlet implementation class FindAllAttori
 */
@WebServlet("/tuttiAttori")
public class FindAllAttori extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private AttoreService attoreService = new AttoreServiceImpl();
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Attore> listAttori = attoreService.orderAZ();
		HttpSession session=request.getSession();
		session.setAttribute("attori", listAttori);
		
		request.getRequestDispatcher("AllAttori.jsp").forward(request, response);
	}

}
