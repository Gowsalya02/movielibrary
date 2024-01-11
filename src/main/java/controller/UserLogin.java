package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import dto.Admin;
import dto.User;
@WebServlet("/userlogin")
public class UserLogin extends HttpServlet
{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		String usermail=req.getParameter("usermail");
		String userpassword=req.getParameter("userpassword");
		
		Dao dao=new Dao();
		
		try 
		{	
				User user =dao.findByUserEmail(usermail);
				if((user) != null)
				{
					if(user.getUserpassword().equals(userpassword))
				    {
					    req.setAttribute("movies", dao.getAllMovies());
						RequestDispatcher dispatcher=req.getRequestDispatcher("homeuser.jsp");
						dispatcher.include(req, resp);
				    }
					else 
					{
					req.setAttribute("message", "*password is wrong");
					RequestDispatcher dispatcher=req.getRequestDispatcher("usersignin.jsp");
					dispatcher.include(req, resp);
						
					}
						
				}
				else
				{
					req.setAttribute("message", "*email is wrong");
					RequestDispatcher dispatcher=req.getRequestDispatcher("usersignin.jsp");
					dispatcher.include(req, resp);
				}
				
			} 
			catch (ClassNotFoundException e) 
			{
				
				e.printStackTrace();
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
	}
}
