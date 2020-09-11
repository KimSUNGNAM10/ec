package test;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*@WebServlet( urlPatterns = { "/hello" , "/deptSelect" }, 
			loadOnStartup = 1    //start 하기전 load 해라
					)     // /가 있어야됨, {}안에 여러개가능
*/public class HelloServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public HelloServ() {
        super();
    
    }

    
	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		System.out.println("init 실행.....");
	}


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("service 실행......");
		System.out.println("client ip : " + request.getRemoteAddr());
		System.out.println("client agent : " + request.getHeader("User-Agent"));
		System.out.println("uri : " + request.getRequestURI());
		System.out.println("url : " + request.getRequestURL());
		System.out.println("query string : " + request.getQueryString());
		
		DeptDAO dao = new DeptDAO();
		int id = Integer.parseInt(request.getParameter("id"));
		DeptVO dept = dao.selectOne(new DeptVO(id));
//		response.getWriter().append("<html").append("<head><title>test</title></head>")
//							.append("<body>")
//							.append("department_name : " + dept.getDepartment_name() + "<br>")
//							.append("manager_id : " + dept.getManager_id() + "<br>")
//							.append("location_id : " + dept.getLocation_id() + "<br>")
//							.append("</body>")
//							.append("<html>");
		request.setAttribute("dept", dept);
		request.getRequestDispatcher("deptSelect.jsp")
				.forward(request, response);
	}


}
