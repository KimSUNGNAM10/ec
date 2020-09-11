package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import common.ConnectionManager;

public class MemberDAO {
	Connection conn;
	PreparedStatement pstmt;

	// 싱글톤
	static MemberDAO instance;

	public static MemberDAO getInstance() {
		if (instance == null)
			instance = new MemberDAO();
		return instance;
	}

	public MemberVO selectOne(MemberVO memberVO) {
		MemberVO resultVO = null;
		ResultSet rs = null;

		try {
			conn = ConnectionManager.getConnnect();
			String sql = "SELECT ID, PW, JOB, GENDER, MAILYN, REASON, HOBBY" + " FROM MEMBER" + " WHERE ID = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberVO.getId());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				resultVO = new MemberVO();
				resultVO.setId(rs.getString(1));
				resultVO.setPw(rs.getString(2));
				resultVO.setJob(rs.getString(3));
				resultVO.setGender(rs.getString(4));
				resultVO.setMailyn(rs.getString(5));
				resultVO.setReason(rs.getString(6));
			} else {
				System.out.println("No data");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.close(rs, pstmt, conn);
		}
		return resultVO;
	}

	public void delete(MemberVO memberVO) {
		try {
			conn = ConnectionManager.getConnnect();
			String sql = "DELETE MEMBER WHERE ID = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberVO.getId());
			int r = pstmt.executeUpdate();
			System.out.println(r + "건 삭제됨");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.close(null, pstmt, conn);
		}
	}

	public void update(MemberVO memberVO) {
		try {
			conn = ConnectionManager.getConnnect();
			String sql = "UPDATE MEMBER SET PW = ? WHERE ID = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberVO.getPw());
			pstmt.setString(2, memberVO.getId());
			int r = pstmt.executeUpdate();
			System.out.println(r + "건 수정됨");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.close(null, pstmt, conn);
		}
	}

	public void insert(MemberVO memberVO) {
		try {
			conn = ConnectionManager.getConnnect();
			String sql = "INSERT INTO MEMBER (ID, PW, JOB, GENDER, MAILYN, REASON, HOBBY, REGDATE) "
					+ "VALUES (?,?,?,?,?,?,?, sysdate)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberVO.getId());
			pstmt.setString(2, memberVO.getPw());
			pstmt.setString(3, memberVO.getJob());
			pstmt.setString(4, memberVO.getGender());
			pstmt.setString(5, memberVO.getMailyn());
			pstmt.setString(6, memberVO.getReason());
			pstmt.setString(7, memberVO.getHobby());
			int r = pstmt.executeUpdate();
			System.out.println(r + "건이 입력됨");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.close(conn);
		}
	}

	public ArrayList<MemberVO> selectAll(MemberVO memberVO) {
		ArrayList<MemberVO> list = new ArrayList<>();
		MemberVO resultVO = null;
		ResultSet rs = null;
		try {
			conn = ConnectionManager.getConnnect();
			String sql = "SELECT ID, PW, JOB, GENDER, MAILYN, REASON, HOBBY, regdate" + " FROM MEMBER ORDER BY ID";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				resultVO = new MemberVO();
				resultVO.setId(rs.getString(1));
				resultVO.setPw(rs.getString(2));
				resultVO.setJob(rs.getString(3));
				resultVO.setGender(rs.getString(4));
				resultVO.setMailyn(rs.getString(5));
				resultVO.setReason(rs.getString(6));
				resultVO.setHobby(rs.getString(7));
				resultVO.setRegdate(rs.getString(8));
				list.add(resultVO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.close(rs, pstmt, conn);
		}
		return list;
	}

	// 메일 수신 회원수 : select count(id) from member where mailyn='y'
	public int getMailynCnt() {
		int cnt = 0;
		try {
			conn = ConnectionManager.getConnnect();
			String sql = "select count(id) from member where mailyn = 'y'";
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			rs.next();
			cnt = rs.getInt(1);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.close(conn);
		}
		return cnt;
	}

	// 성별인원수 : select gender, count(id) cnt from member group by gender
	public List<HashMap<String, Object>> getGenderCnt() {
		List<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		try {
			conn = ConnectionManager.getConnnect();
			String sql = "select gender, count(id) cnt from member group by gender";
			PreparedStatement stmt = conn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				HashMap<String, Object> map = new HashMap<String, Object>();
				map.put("gender", rs.getString("gender"));
				map.put("cnt", rs.getInt("cnt"));
				list.add(map);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.close(conn);
		}
		return list;
	}

	// select sum(case when gender='남' then 1 else 0 end) m,
	// sum (case when gender='남' then 1 else 0 end) f
	// from member;

}