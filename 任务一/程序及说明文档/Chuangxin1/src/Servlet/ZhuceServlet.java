package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import Bean.UserDao;
import Model.User;

/**
 * Servlet implementation class ZhuceServlet
 */
@WebServlet("/ZhuceServlet")
public class ZhuceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ZhuceServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("UTF-8");
		UserDao userDao=new UserDao();
		if(request.getParameter("caozuo").equals("×¢²á")){
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String pingtaimc=request.getParameter("pingtaimc");
		String pingtaibh=request.getParameter("pingtaibh");
		String jsly=request.getParameter("jsly");
		User user=new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setPingtaimc(pingtaimc);
		user.setPingtaibh(pingtaibh);
		user.setJsly(jsly);
		try{
			userDao.add(user);
			response.sendRedirect("ayangshi/login.jsp");
		}catch (Exception e) {
			// TODO: handle exception
			request.getSession().setAttribute("error1", "ÓÃ»§Ãû´æÔÚ");
			response.sendRedirect("ayangshi/zhuce.jsp");
		}
			
		}
		
		if(request.getParameter("caozuo") .equals("µÇÂ¼"))
		{
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			User user=new User();
			user=userDao.login(username);
			String p=user.getPassword();
			if(p==null){
				response.sendRedirect("ayangshi/login.jsp");
				return;
			}
			if(p.equals(password)){
				request.getSession().setAttribute("user", user);
				if(user.getType()==1){
				response.sendRedirect("ayangshi/main.jsp");
				}
				else{
					response.sendRedirect("aguanli/main.jsp");
				}
			}
			else{
				String error="ÃÜÂë´íÎó";
				//out.print("<script language='javaScript'>alert('ÃÜÂë´íÎó');</script>");
				request.getSession().setAttribute("error", error);
				response.sendRedirect("ayangshi/login.jsp");
			}
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
