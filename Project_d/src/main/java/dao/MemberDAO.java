package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCUtil;
import vo.MemberVO;

public class MemberDAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	private final String selectAll = "select mbId,mbPw,mbIrum,mbEmail,mbBirthYear,mbPoint,mbAdmin from cgv_member";
	private final String insert = "insert into cgv_member(mbId,mbPw,mbIrum,mbEmail,mbBirthYear,mbPoint,mbAdmin) values(?,?,?,?,?,0,'X')";
	private final String m_idCheck = "select mbId from cgv_member where mbId=?";
	private final String selectOne = "select mbId,mbPw,mbIrum,mbEmail,mbBirthYear,mbPoint,mbAdmin from cgv_member where mbId=?";
	private final String update = "update cgv_member set mbPw=?, mbIrum=?, mbEmail=?, mbBirthYear=? where mbId=?";
	private final String delete = "delete from cgv_member where mbId=?";
	
	public ArrayList<MemberVO> selectAll(MemberVO vo){
		ArrayList<MemberVO> datas = new ArrayList<MemberVO>();
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(selectAll);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MemberVO data = new MemberVO();
				data.setMbId(rs.getString("mbId"));
				data.setMbPw(rs.getString("mbPw"));
				data.setMbIrum(rs.getString("mbIrum"));
				data.setMbEmail(rs.getString("mbEmail"));
				data.setMbBirthYear(rs.getString("mbBirthYear"));
				data.setMbPoint(rs.getString("mbPoint"));
				data.setMbAdmin(rs.getString("mbAdmin"));
				datas.add(data);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JDBCUtil.disconnect(pstmt, conn, rs);
		return datas;
	}
	
	public boolean insert(MemberVO vo) {
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(insert);
			pstmt.setString(1, vo.getMbId());
			pstmt.setString(2, vo.getMbPw());
			pstmt.setString(3, vo.getMbIrum());
			pstmt.setString(4, vo.getMbEmail());
			pstmt.setString(5, vo.getMbBirthYear());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		JDBCUtil.disconnect(pstmt, conn);
		return true;
	}
	
	public int m_idCheck(MemberVO vo) {
		conn = JDBCUtil.connect();
		MemberVO data = new MemberVO();
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(m_idCheck);
			pstmt.setString(1, vo.getMbId());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				data.setMbId(rs.getString("mbId"));
				return 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.disconnect(pstmt, conn, rs);
		}
		return 0;
	}
	
	public MemberVO login(MemberVO vo) {
		MemberVO data = null;
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(selectOne);
			pstmt.setString(1, vo.getMbId());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				System.out.println("로그 : 아이디존재");
				if (rs.getString("mbPw").equals(vo.getMbPw())) {
					System.out.println("로그 : 비밀번호 일치");
					data = new MemberVO();
					data.setMbId(rs.getString("mbId"));
					data.setMbPw(rs.getString("mbPw"));
					data.setMbIrum(rs.getString("mbIrum"));
					data.setMbEmail(rs.getString("mbEmail"));
					data.setMbBirthYear(rs.getString("mbBirthYear"));
					data.setMbPoint(rs.getString("mbPoint"));
					data.setMbAdmin(rs.getString("mbAdmin"));
				} else {
					System.out.println("로그 : 비밀번호 불일치");
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JDBCUtil.disconnect(pstmt, conn, rs);
		return data;
	}
	
	public boolean update(MemberVO vo) {
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(update);
			pstmt.setString(1, vo.getMbPw());
			pstmt.setString(2, vo.getMbIrum());
			pstmt.setString(3, vo.getMbEmail());
			pstmt.setString(4, vo.getMbBirthYear());
			pstmt.setString(5, vo.getMbId());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		JDBCUtil.disconnect(pstmt, conn);
		return true;
	}
	
	public boolean delete(MemberVO vo) {
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(delete);
			pstmt.setString(1, vo.getMbId());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		JDBCUtil.disconnect(pstmt, conn);
		return true;
	}
}
