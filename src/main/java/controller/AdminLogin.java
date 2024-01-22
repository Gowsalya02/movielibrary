package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import dto.Admin;

@WebServlet("/loginadmin")
public class AdminLogin extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		String adminmail=req.getParameter("adminmail");
		String adminpassword=req.getParameter("adminpassword");
		
		Dao dao=new Dao();
		
		try 
		{
			
			Admin admin =dao.findByEmail(adminmail);
			if(admin!=null)
			{
				if(admin.getAdminpassword().equals(adminpassword))
			    {
					HttpSession session=req.getSession();
					session.setAttribute("adminmail",admin.getAdminmail());
				    req.setAttribute("movies", dao.getAllMovies());
					RequestDispatcher dispatcher=req.getRequestDispatcher("home.jsp");
					dispatcher.include(req, resp);
			    }
				else 
				{
				req.setAttribute("message", "*password is wrong");
				RequestDispatcher dispatcher=req.getRequestDispatcher("adminlogin.jsp");
				dispatcher.include(req, resp);
					
				}
					
			}
			else
			{
				req.setAttribute("message", "*email is wrong");
				RequestDispatcher dispatcher=req.getRequestDispatcher("adminlogin.jsp");
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
