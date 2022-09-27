package org.generationitaly.progettocinema.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.generationitaly.progettocinema.entity.Attore;
import org.generationitaly.progettocinema.repository.AttoreRepository;
import org.generationitaly.progettocinema.repository.impl.AttoreRepositoryImpl;

/**
 * Servlet implementation class FindByIdAttoreServlet
 */
@WebServlet("/findId-attore")
public class FindByIdAttoreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private AttoreRepository attoreRepository = new AttoreRepositoryImpl();
   

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Attore attore = attoreRepository.findById(id);
		request.setAttribute("attore", attore);
		request.getRequestDispatcher("attore.jsp").forward(request, response);
		
	}

	

}
