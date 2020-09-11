package test;

import java.util.ArrayList;

public class DeptDAOTest {
	public static void main(String[] args) {
		DeptDAO dao = new DeptDAO();
//		dao.selectOne(new DeptVO(10));
//		DeptVO deptVO = dao.selectOne(new DeptVO(10));
//		DeptVO deptVO = dao.selectAll(new DeptVO(10));
//		System.out.println(deptVO);
		ArrayList<DeptVO> list = dao.selectAll(null);
		System.out.println(list);
	}
}
