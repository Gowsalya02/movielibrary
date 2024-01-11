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
@WebServlet("/saveuser")
public class SaveUser extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		int userid=Integer.parseInt(req.getParameter("u-id"));
		String username=req.getParameter("u-name");
		Long usercontact=Long.parseLong(req.getParameter("u-contact"));
		String usermail=req.getParameter("u-mail");
		String userpassword=req.getParameter("u-password");
		
		User u=new User();
		u.setUserid(userid);
		u.setUsername(username);
		u.setUsercontact(usercontact);
		u.setUsermail(usermail);
		u.setUserpassword(userpassword);
		
		Dao ado=new Dao();
		try {
			int res=ado.saveUser(u);
			
			if(res>0)
			{
				RequestDispatcher dispatcher=req.getRequestDispatcher("usersignin.jsp");
				dispatcher.include(req, resp);	
			}
			else 
			{
				RequestDispatcher dispatcher=req.getRequestDispatcher("usersignup.jsp");
				dispatcher.include(req, resp);	
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
