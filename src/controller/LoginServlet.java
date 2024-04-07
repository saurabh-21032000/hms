package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.LoginDao;
import dao.Signupdao;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name").trim();
		String password = request.getParameter("pass").trim();
		
		
		LoginDao dao = new LoginDao();
		boolean flag = dao.isRegistered(name, password);
		
		boolean isAdmin = LoginDao.checkAdmin(name);
		System.out.println(isAdmin);
		
		if(flag == true && isAdmin) {
			response.getWriter().println("<h1>Loggin as Admin!!</h1>");
		     //response.sendRedirect("adminNav.jsp");
		}
		else if(flag == true){
			//Its the user
			response.getWriter().println("<h1>Loggin as user!!</h1>");
			//response.sendRedirect("adminNav.jsp");
		}else{
			//invalid credentails
			//redirect to signup page
			response.getWriter().println("<h1>invalid crendentials!!</h1>");
		}
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
