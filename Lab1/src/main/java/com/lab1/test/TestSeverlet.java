package com.lab1.test;

import java.io.IOException;
import java.util.List;

import com.lab1.entity.User;

import edu.fa.UserManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestSeverlet
 */
@WebServlet("/")
public class TestSeverlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestSeverlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    UserManager um=new UserManager();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());

		//um.addUser(new User("nammai","8386","Mai Văn Nam","mnam3239@gmail.com",true));
		um.update("nammai");
		//um.deleteById("nammai");
			//List<User> list=	um.findAll();
		//List<User> list=	um.findNonAdminFptUsers();
		List<User> list=	um.getUsersByPage(0,5);
 			for(User u:list) {
				System.out.println(u.getFullname() +":"+u.isAdmin());
			}

 			um.seachId("fpt");
	}



}
