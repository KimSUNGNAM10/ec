package dept;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/dept/empInsert")
public class employeeInsertServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<JobVO> joblist = JobDAO.getInstance().selectAll();
		request.setAttribute("joblist", joblist);
		
		List<EmpVO> manid = EmpDAO.getInstance().selectAll();
		request.setAttribute("manid", manid);
		
		
		ArrayList<DeptVO> deptid = new DeptDAO().selectAll(null);
		request.setAttribute("deptid", deptid);
		
		
		request.getRequestDispatcher("employeeInsert.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EmpVO empVO = new EmpVO();
		empVO.setEmployee_id(request.getParameter("employee_id"));
		empVO.setFirst_name(request.getParameter("first_name"));
		
		EmpDAO dao = new EmpDAO();
		dao.insert(empVO);
		
		response.sendRedirect("empSeletAll");
	}

}
