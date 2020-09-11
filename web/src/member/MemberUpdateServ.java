package member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

@WebServlet("/member/memberUpdate")
public class MemberUpdateServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//수정 페이지로 이동
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("memberUpdate.jsp").forward(request, response);
	}

	//수정 처리
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberVO memberVO = (MemberVO)request.getSession().getAttribute("login");
		
		if(memberVO != null){
			String pw = request.getParameter("pw");
			String job = request.getParameter("job");
			memberVO.setPw(pw);
			memberVO.setJob(job);
			memberVO.setGender(request.getParameter("gender"));
			memberVO.setMailyn(request.getParameter("mailyn"));
			memberVO.setReason(request.getParameter("reason"));
			
			try {
				BeanUtils.copyProperties(memberVO, request.getParameterMap());
				
			} catch(Exception e) {
				e.printStackTrace();
			}
			MemberDAO.getInstance().update(memberVO);			
		} else {
			System.out.println("xxxxxxxxxxxxxxxxxxxxx/.");
		}
	}

}
