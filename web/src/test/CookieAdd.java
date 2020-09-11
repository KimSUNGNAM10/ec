package test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test/CookieAdd")
public class CookieAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("UTF-8");
		
		
		// 쿠키 객체 생성
		Cookie cookie = new Cookie("id", "홍");
		cookie.setPath("/");

		// 쿠키 유효시간 설정
		cookie.setMaxAge(60 * 60 * 24 * 7); // 60*60*24*7 일주일 60*60*24 하루

		// 쿠키 저장
		response.addCookie(cookie);
		
//=====================================================================================
		
		// 쿠키 객체 생성
		Cookie cookie1 = new Cookie("popupYn", "yes");
		cookie1.setPath("/");

		// 쿠키 유효시간 설정
		cookie1.setMaxAge(60 * 60 * 24 * 7); // 60*60*24*7 일주일 60*60*24 하루

		// 쿠키 저장
		response.addCookie(cookie1);
		// 쿠키 조회
		response.sendRedirect("cookieSelect.jsp");

		response.addCookie(cookie1);
	}

}
