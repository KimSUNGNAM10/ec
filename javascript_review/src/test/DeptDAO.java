package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import common.ConnectionManager;

public class DeptDAO {
	
	//전역변수 , 모든 메소드에서 공통으로 사용되는 변수는 밖으로 빼서
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

	//전체 조회
	public ArrayList<DeptVO> selectAll(DeptVO deptVO) {
		DeptVO resultVO = null;
		ArrayList<DeptVO> list = new ArrayList<DeptVO>();
		
		try {
			conn = ConnectionManager.getConnnect();
			String sql = "SELECT DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID "
					+ " FROM DEPARTMENTS "
					+ " ORDER BY DEPARTMENT_ID";
			pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, deptVO.getDepartment_id());  ?가 없어서 필요없음 
			rs = pstmt.executeQuery();
			while (rs.next()) { 
				resultVO = new DeptVO();
				resultVO.setDepartment_id(rs.getInt(1));
				resultVO.setDepartment_name(rs.getString("department_name"));
				resultVO.setManager_id(rs.getInt("manager_id"));
				resultVO.setLocation_id(rs.getInt("LOCATION_id"));
				list.add(resultVO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.close(rs, pstmt, conn);
		}
		return list;
	}
	
	
	//단건 조회
	public DeptVO selectOne(DeptVO deptVO) {
		DeptVO resultVO = null;
		try {
			conn = ConnectionManager.getConnnect();
			String sql = "SELECT DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID "
					+ " FROM DEPARTMENTS "
					+ " WHERE DEPARTMENT_ID = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, deptVO.getDepartment_id());  // 1  파라미터 인덱스위치
			rs = pstmt.executeQuery();
			if (rs.next()) {       //첫번째 레코드로 이동
				resultVO = new DeptVO();
				resultVO.setDepartment_id(rs.getInt(1));
				resultVO.setDepartment_name(rs.getString("department_name"));
				resultVO.setManager_id(rs.getInt("manager_id"));
				resultVO.setLocation_id(rs.getInt("LOCATION_id"));

			} else {
				System.out.println(" no data ");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.close(rs, pstmt, conn);
		}
		return resultVO;
	}
	
	//삭제
	public void delete(DeptVO deptVO) {
		try {
			 conn = ConnectionManager.getConnnect();
			 String sql = "delete departments where department_id = ?";
			 pstmt = conn.prepareStatement(sql);
//			 pstmt.setString(1, deptVO.getDepartment_name());
			 pstmt.setInt(1, deptVO.getDepartment_id());
			 int r = pstmt.executeUpdate();
			 System.out.println(r + "건이 삭제됨");
			 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.close(conn);
		}
	}
	
	
	public void update(DeptVO deptVO) {
		try {
			 conn = ConnectionManager.getConnnect();
			 String sql = "update departments set department_name = ? where department_id = ?";
			 pstmt = conn.prepareStatement(sql);
			 pstmt.setString(1, deptVO.getDepartment_name());
			 pstmt.setInt(2, deptVO.getDepartment_id());
			 int r = pstmt.executeUpdate();
			 System.out.println(r + "건이 수정됨");
			 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.close(conn);
		}
	}
	
	public void insert(DeptVO deptVO) {
		try {
		// 1. DB연결
		conn = ConnectionManager.getConnnect();
		
		// 2. sql 구문 실행
		String sql = "insert into departments (department_id, department_name) "
					 + " values (" + deptVO.getDepartment_id() + " , '" 
					 + deptVO.getDepartment_name() + "' )";
		
			Statement stmt = conn.createStatement();
			int r = stmt.executeUpdate(sql);
		
		// 3. 결과 처리
			System.out.println(r + "건이 처리됨");
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
		
		// 4. 연결해제
		ConnectionManager.close(conn);
		}
	}
}

