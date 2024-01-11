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
@WebServlet("/saveadmin")
public class SaveAdmin extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int adminid=Integer.parseInt(req.getParameter("a-id"));
		String adminname=req.getParameter("a-name");
		Long admincontact=Long.parseLong(req.getParameter("a-contact"));
		String adminmail=req.getParameter("a-mail");
		String adminpassword=req.getParameter("a-password");
		
		Admin a=new Admin();
		a.setAdminid(adminid);
		a.setAdminname(adminname);
		a.setAdmincontact(admincontact);
		a.setAdminmail(adminmail);
		a.setAdminpassword(adminpassword);
		
		Dao ado=new Dao();
		try {
			int res=ado.saveAdmin(a);
			
			if(res>0)
			{
				RequestDispatcher dispatcher=req.getRequestDispatcher("adminlogin.jsp");
				dispatcher.include(req, resp);	
			}
			else 
			{
				RequestDispatcher dispatcher=req.getRequestDispatcher("adminsignup.jsp");
				dispatcher.include(req, resp);	
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
