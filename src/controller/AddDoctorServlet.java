package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.LoginDao;
import entities.Doctor;

/**
 * Servlet implementation class AddDoctorServlet
 */
@WebServlet("/add-doctor")
public class AddDoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDoctorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String name = request.getParameter("name");
		String email = request.getParameter("email"); 
		String phone = request.getParameter("phone");
		String speciality = request.getParameter("speciality");
		String gender = request.getParameter("gender");
		String experience = request.getParameter("experience");
		String rating = request.getParameter("rating");
		
		
		LoginDao dao = new LoginDao();
		
		Doctor doctor = new Doctor(name, email, phone, gender, speciality, experience, rating);
		
	//	boolean isDoctorAdded = dao.addDoctor(doctor);
		
		if(isDoctorAdded){
			response.getWriter().println("<h1>Doctor is Successfully added</h1>");
		}else{
			response.getWriter().println("<h1>Doctor's  registration failed</h1>");
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
