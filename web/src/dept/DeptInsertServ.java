package dept;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/dept/deptInsert")
public class DeptInsertServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	//get : 부서등록페이지로 이동
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//지역정보
		ArrayList<HashMap<String, String>> locationlist = LocationDAO.getInstance().selectAll();
		request.setAttribute("locationlist", locationlist);
		//사원(매니저)정보
		List<EmpVO> emplist = EmpDAO.getInstance().selectAll();
		request.setAttribute("employeelist", emplist);
		
		
		request.getRequestDispatcher("deptInsertForm.jsp").forward(request, response);
	}

	//post 부서등록처리
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("dept 등록 실행");
		//1. 파라미터를 VO에 담기
		DeptVO deptVO = new DeptVO();
		deptVO.setDepartment_id(Integer.parseInt(request.getParameter("department_id")));
		deptVO.setDepartment_name(request.getParameter("department_name"));
		
		//2. 등록 처리
		DeptDAO dao = new DeptDAO();
		dao.insert(deptVO);
		
		//3. 결과 처리(생략)
		
		//4.전체 조회 서블릿 페이지로 이동
		response.sendRedirect("deptSelectAll");
	}

}
