package cgvBoard;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import CGVTicket.CGVTicketVO;
import common.JDBCUtil;

public class MVBoardSubDAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	private final String insert = "insert into mvboardSub(sandNo,autor,subcontent,sandtime) values(?,?,?,DEFAULT)";
	private final String Allout = "select * from mvboardSub where sandNo like ? ORDER BY sandtime DESC ";
	//private final String seqOut = "SELECT no_seq.NEXTVAL FROM DUAL; ";
	//private final String allOut = "select * from mvboard";
	//private final String oneOut = "select * from mvboard where mvno=?";
	
	public boolean insert(MVBoardSubVO vo) {
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(insert);
			pstmt.setLong(1, vo.getNo());
			pstmt.setString(2, vo.getAutor());
			pstmt.setString(3, vo.getContent());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		JDBCUtil.disconnect(pstmt, conn);
		return true;
	}
	public ArrayList<MVBoardSubVO> Allout (MVBoardSubVO vo) {
		ArrayList<MVBoardSubVO> lists = new ArrayList<MVBoardSubVO>();
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(Allout);
			pstmt.setLong(1, vo.getNo());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MVBoardSubVO list = new MVBoardSubVO();
				list.setContent(rs.getString("sandNo"));
				list.setAutor(rs.getString("autor"));
				list.setContent(rs.getString("subcontent"));
				list.setSandTime(rs.getString("sandtime"));
				System.out.println(list);
				lists.add(list);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		JDBCUtil.disconnect(pstmt, conn, rs);
		return lists;
	}
}
