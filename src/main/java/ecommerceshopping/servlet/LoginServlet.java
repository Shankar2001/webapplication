package ecommerceshopping.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ecommerceshopping.connection.DbCon;
import ecommerceshopping.dao.*;
import ecommerceshopping.model.*;
import javax.servlet.http.*;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {
			String email = request.getParameter("login-email");
			String password = request.getParameter("login-password");
          	UserDatabaseDao udao = new UserDatabaseDao(DbCon.getConnection());
			User user = udao.logUser(email, password);
			if (user!= null) {
				request.getSession().setAttribute("auth", user);
				response.sendRedirect("index.jsp");
			   
			} else {
				out.println("User Not Found Please Register");
			}

		} catch (ClassNotFoundException|SQLException e) {
			e.printStackTrace();
		} 

	}
}
