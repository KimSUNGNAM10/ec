package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import common.ConnectionManager;
import dept.DeptVO;


public class BoardDAO {
	Connection conn;
	PreparedStatement pstmt;

	public ArrayList<BoardVO> selectAll() {
		BoardVO resultVO = null;
		ResultSet rs = null;
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		
		try {
			conn = ConnectionManager.getConnnect();
			String sql = "SELECT no, subject, poster , content, lastpost, views, filename "
					+ " FROM board "
					+ " ORDER BY no";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				resultVO = new BoardVO();
				resultVO.setNo(rs.getInt("no"));
				resultVO.setSubject(rs.getString("subject"));
				resultVO.setPoster(rs.getString("poster"));
				resultVO.setContent(rs.getString("content"));
				resultVO.setLastpost(rs.getString("lastpost"));
				resultVO.setViews(rs.getInt("views"));
				resultVO.setFilename(rs.getString("filename"));
				list.add(resultVO);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			ConnectionManager.close(rs, pstmt, conn);
		}
		return list;
	}
	
	public BoardVO selectOne(BoardVO boardVO) {
		BoardVO resultVO = null;
		ResultSet rs = null;
		try {
			conn = ConnectionManager.getConnnect();
			conn.setAutoCommit(false);
			// 보드 번호 조회 , 업데이트
			String seqSql = "SELECT no FROM seq WHERE tablename = 'board'";
			Statement stmt = conn.createStatement();
			rs = stmt.executeQuery(seqSql);
			rs.next();
			int no = rs.getInt(1);
			//보드 번호 업데이트
			seqSql = "UPDATE seq SET no = no + 1 WHERE tablename = 'board'";
			stmt = conn.createStatement();
			stmt.executeUpdate(seqSql);
			
			
			//게시글 등록
			String sql = "SELECT no, subject, poster , content, lastpost, views, filename "
					+ " FROM board "
					+ " WHERE no = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardVO.getNo());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				resultVO = new BoardVO();
				resultVO.setNo(rs.getInt("no"));
				resultVO.setSubject(rs.getString("subject"));
				resultVO.setPoster(rs.getString("poster"));
				resultVO.setContent(rs.getString("content"));
				resultVO.setLastpost(rs.getString("lastpost"));
				resultVO.setViews(rs.getInt("views"));
				resultVO.setFilename(rs.getString("filename"));
				
				
			}else {
				System.out.println("없음");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			ConnectionManager.close(rs, pstmt, conn);
		}
		return resultVO;
	}
	
	public void delete(BoardVO boardVO) {
		try {
			conn = ConnectionManager.getConnnect();
			String sql = "delete board where no = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardVO.getNo());
			int r = pstmt.executeUpdate();
			System.out.println(r + " 건이 삭제됨");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.close(conn);
		}
	}
	
	public void update(BoardVO boardVO) {
		try {
			conn = ConnectionManager.getConnnect();
			String sql = "update board set content = ? where no= ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, boardVO.getContent());
			pstmt.setInt(2, boardVO.getNo());
			
			int r = pstmt.executeUpdate();
			System.out.println( r + " 건이 수정됨");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.close(conn);
		}
	}
	
	public void insert(BoardVO boardVO) {
		//1.DB연결
		try {
			conn = ConnectionManager.getConnnect();
			//2.SQL 구문 실행
			//String sql = "insert into board (no, content) "
			//		+ " values (" + boardVO.getNo() + ", '" + boardVO.getContent() + "')";
			//Statement stmt = conn.createStatement();
//			int r = stmt.executeUpdate(sql);
			String sql = "insert into board(no, subject, content, rdate) values (board_next.nextval, ?, ?, sysdate)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, boardVO.getSubject());
			pstmt.setString(2, boardVO.getContent());
			int r = pstmt.executeUpdate();
			System.out.println(r+"건이 처리됨");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.close(conn);			
		}
	}
}
