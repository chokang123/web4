package CGVTicket;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import CGVMAP.CgvMapVO;
import common.JDBCUtil;

public class CGVTicketDAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	private final String insert = "insert into Mv_ticket(sit,center,mv,day,time,Mirum,Buy_time) values(?,?,?,?,?,?,DEFAULT)";
	//private final String group = "select cgvcity from Moviecenter GROUP BY cgvcity";
	//private final String selectOne = "select * from moviecenter where cgvcity like '?'";
	//private final String selectCenter = "select cgvcenter from moviecenter where cgvcity like ?";
	//private final String selectAll = "select rank,title,mvscore,dir,act,mvinfo,opendate,genre,pos from movies";
	
	public void insert(CGVTicketVO vo) {
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(insert);
			pstmt.setString(1, vo.getSit());
			pstmt.setString(2, vo.getCenter());
			pstmt.setString(3, vo.getMv());
			pstmt.setString(4, vo.getDay());
			pstmt.setString(5, vo.getTime());
			pstmt.setString(6, vo.getMirum());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JDBCUtil.disconnect(pstmt, conn);
	}
}
