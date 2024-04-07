package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Enum.Gender;
import Enum.Role;
import dao.Signupdao;
import entities.Signup;

/**
 * Servlet implementation class SignupServlet
 */
@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        out.print("<h1>hello</h1>");
        
        String name = request.getParameter("name");
        String pass = request.getParameter("pass");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String genderString = request.getParameter("gender");
        String roleString = request.getParameter("role");
        String pin=request.getParameter("pin");
        
        Gender gender = Gender.valueOf(genderString.toUpperCase());
        Role role = Role.valueOf(roleString.toUpperCase());
        if(role==Role.ADMIN)
        {
        	if(!pin.equals("admin@123"))
        	{
        		response.getWriter().println("<h1>invaild password</h1>");
        		return;
        	}
        }
        Signup signup = new Signup();
        signup.setName(name);
        signup.setPass(pass);
        signup.setEmail(email);
        signup.setPhone(phone);
        signup.setGender(gender);
        signup.setRole(role);

        try {
            Signupdao signupDao = new Signupdao();
            int rowsAffected = signupDao.insertdata(signup);
            
            if (rowsAffected > 0) {
                out.print("<h1>Data inserted successfully</h1>");
            } else {
                out.print("<h1>Failed to insert data</h1>");
            }
        } catch(Exception e) {
            e.printStackTrace();
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
