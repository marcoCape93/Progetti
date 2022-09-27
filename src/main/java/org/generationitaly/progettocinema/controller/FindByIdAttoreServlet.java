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
 * Servlet implementation class FindByIdAttoreServlet
 */
@WebServlet("/findById-attore")
public class FindByIdAttoreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private AttoreService attoreService = new AttoreServiceImpl();
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Attore attore = attoreService.findById(id);
		request.setAttribute("attore", attore);
		request.getRequestDispatcher("schedaAttoreId.jsp").forward(request, response);
	}

}
