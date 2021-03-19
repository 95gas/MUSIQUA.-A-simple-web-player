package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database_connection.DBUtils;
import database_connection.MyUtils;
import models.Playlist;
import models.User;

/**
 * Servlet implementation class SignUpServlet
 */
@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        this.getServletContext().getRequestDispatcher("/WEB-INF/views/SignUp.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = MyUtils.getStoredConnection(request);	
		User man = new User();
		
		String gender = request.getParameter("gender");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String password = request.getParameter("password");
		String confirm = request.getParameter("confirm");
		String[] selectgenre=request.getParameterValues("chk");
		String country = request.getParameter("country");
		String city = request.getParameter("city");
		String address = request.getParameter("address");
		String house_num = request.getParameter("number");
		int postecode = Integer.parseInt(request.getParameter("postecode"));
		String month = request.getParameter("month");
		int day = Integer.parseInt(request.getParameter("day"));
		int year = Integer.parseInt(request.getParameter("year"));
		
		man.setUsername(username);
		man.setEmail(email);
		man.setFirstname(firstname);
		man.setLastname(lastname);
		man.setPsw(password);
		man.setGender(gender);
		man.setCountry(country);
		man.setCity(city);
		man.setStreet(address);
		man.setStreet_number(house_num);
		man.setPostcode(postecode);
		man.setBirth_month(month);
		man.setBirth_day(day);
		man.setBirth_year(year);
		man.setBirth_month(month);
		man.setAppletoken(null);
		man.setFacetoken(null);
		man.setGmailtoken(null);
		
		try {
			DBUtils.insertUser(conn, man);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
        
		response.sendRedirect("index");
	}

}
