package com.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Emp;
import com.model.PersonDAO;
import com.model.ProjectDAO;

/**
 * Servlet implementation class EmpServlet
 */
@WebServlet("/emp.do")
public class EmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("dlist", ProjectDAO.getDepts());
		RequestDispatcher rd=request.getRequestDispatcher("emp.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  int eno =	Integer.parseInt(request.getParameter("eno"));
		   String name = request.getParameter("name");
		   String city = request.getParameter("city");
		   int departmentno =	Integer.parseInt(request.getParameter("dno"));
		   
		   Emp p=new Emp(eno,name,city,departmentno);
		   if(ProjectDAO.insert(p))
			   response.sendRedirect("emp.do");
		   else
			   response.getWriter().print("Something went wrong check log");
	}

}
