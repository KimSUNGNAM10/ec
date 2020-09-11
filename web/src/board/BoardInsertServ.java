package board;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import common.FileRenamePolicy;

//파라미터 스트림 값을 바운드리(구분기호)로 잘라서 part배열로 만들어줌
@MultipartConfig(location = "c:/upload", maxRequestSize = 1024 * 1024 * 10)
@WebServlet("/board/boardInsert.do")
public class BoardInsertServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// 등록 페이지로 이동
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("boardInsert.jsp").forward(request, response);
	}

	// 등록 처리
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		BoardVO boardVO = new BoardVO();
		// subject, contents, filename
		boardVO.setPoster(request.getParameter("poster"));
		boardVO.setContent(request.getParameter("contents"));
		boardVO.setSubject(request.getParameter("subject"));

//		memberVO.setId(request.getParameter("id"));
//		memberVO.setPw(request.getParameter("pw"));
//		memberVO.setJob(request.getParameter("job"));
//		memberVO.setGender(request.getParameter("gender"));
//		memberVO.setMailyn(request.getParameter("mailyn"));
//		memberVO.setReason(request.getParameter("reason"));

//		try {
//			BeanUtils.copyProperties(boardVO, request.getParameterMap());
//		} catch(Exception e) {
//			e.printStackTrace();
//		}

//		System.out.println("=======map======");
//		Map<String, String[]> map = request.getParameterMap();
//		System.out.println(map);
//		System.out.println("id= " + map.get("id")[0]);
//		
//		System.out.println("=======names======");
//		Enumeration<String> pnames = request.getParameterNames();
//		while(pnames.hasMoreElements()) {
//			System.out.println(pnames.nextElement());
//		}
//		

		// 첨부파일 처리
		Part part = request.getPart("filename");
		String fileName = getFileName(part); // getFileName(part);
		String path = request.getServletContext().getRealPath("/images"); //"c:/upload";
		System.out.println(path);
		
		//파일명 중복 체크
		File renameFile = FileRenamePolicy.rename(new File(path, fileName));
		part.write(path + "/" + renameFile.getName());
		boardVO.setFilename(renameFile.getName());

		BoardDAO dao = new BoardDAO();
		dao.insert(boardVO);

		request.getRequestDispatcher("BoardSelectAll.do").forward(request, response);
	}

	private String getFileName(Part part) throws UnsupportedEncodingException {
		for (String cd : part.getHeader("Content-Disposition").split(";")) {
			if (cd.trim().startsWith("filename")) {
				return cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
			}
		}
		return null;
	}

}
