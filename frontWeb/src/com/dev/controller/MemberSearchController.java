package com.dev.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.model.MemberDAO;
import com.dev.model.MemberVO;

public class MemberSearchController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("회원조회");
		//job에 따라서 포워드 페이지 지정
		String path = "memberSearch.jsp";
		String job = request.getParameter("job");
		if (job.equals("delete")) {
			path = "memberDelete.jsp";
		} else if (job.equals("update")) {
			path = "memberUpdate.jsp";
		}
		
		//파라미터 변수에 저장
		String id = request.getParameter("id");
		
		//유효성 체크
		if (id == null || id.equals("")) {
			request.setAttribute("error", "id를 입력~~!!!!!!!!!!!");
//			request.getRequestDispatcher("/member/memberInsert.jsp").forward(request, response);
			request.getRequestDispatcher("/member/" + path).forward(request, response);
			
			return;
			//search 페이지로 포워드
//	==================================================================================		
//			if (id.isEmpty() ) {
//				request.setAttribute("error", "id를 입력~~!!!!!!!!!!!");
//				//search 페이지로 포워드
//				return;
//  \\\\\\\\\\=============================================================================
		}
		//VO에 담기
		MemberVO membervo = new MemberVO();
		membervo.setId(id);
		
		//서비스
		MemberVO resultVO;
		resultVO = MemberDAO.getInstance().selectOne(membervo);
		if (resultVO == null) {
			System.out.println("ID 없음");
			return;
		}
		
		//조회 결과를 저장 후 결과페이지로 포워드
			request.setAttribute("member", resultVO);
		if (job.equals("search")) {
			request.getRequestDispatcher("/member/memberSearchOutput.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/member/" + path).forward(request, response);
		}
	}
}
