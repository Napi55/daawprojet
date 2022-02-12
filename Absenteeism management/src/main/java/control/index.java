package control;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.admin;
import model.admindao;
import model.prof;
import model.profdao;

@WebServlet("/index")
public class index extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public index() {
        super();
       
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request.getSession().getAttribute("prof") != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/acueil.jsp");
			dispatcher.include(request, response);
		
		} else {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/login.jsp");
			dispatcher.include(request, response);
		}
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
	
		
		request.setAttribute("username", username);
		request.setAttribute("password", password);
		
		profdao profdao= new profdao();
		admindao admindao = new admindao();
		
	try {
			prof prof=profdao.checkLogin(username, password);
			
			if(prof!=null ) {
				

				HttpSession session = request.getSession();
				session.setAttribute("prof", prof);
				
				this.getServletContext().getRequestDispatcher("/WEB-INF/acueil.jsp").forward(request, response);
				
				
			}
			
			admin admin = admindao.checkLogin(username, password);
	       if(admin!=null ) {
				

				HttpSession session = request.getSession();
				session.setAttribute("admin", admin);
				
				this.getServletContext().getRequestDispatcher("/WEB-INF/acueilAdmin2.jsp").forward(request, response);
				
				
			}
			
			if(prof==null||admin==null) {
				//PrintWriter out = response.getWriter();

				
			//	out.print("<center><h2> Incorect user or password !!<h2>");
				String msg="Incorect user or password !!";
				request.setAttribute("msg", msg);
			
				this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
			}
			
			
			
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
