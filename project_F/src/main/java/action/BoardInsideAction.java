package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cgvBoard.MVBoardDAO;
import cgvBoard.MVBoardSubDAO;
import cgvBoard.MVBoardSubVO;
import cgvBoard.MVBoardVO;
import controller.ActionForward;
import controller.IAction;

public class BoardInsideAction implements IAction {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		MVBoardDAO dao = new MVBoardDAO();
		MVBoardVO vo = new MVBoardVO();
		MVBoardSubVO svo = new MVBoardSubVO();
		MVBoardSubDAO sdao = new MVBoardSubDAO();
		
		int no = Integer.parseInt(req.getParameter("no"));
		System.out.println(no);
		vo.setNo(no);
		svo.setNo(no);
		ArrayList<MVBoardVO> data = dao.oneOut(vo);
		req.setAttribute("data", data);
		
		ArrayList<MVBoardSubVO> list = sdao.Allout(svo);
		req.setAttribute("list", list);
		
		forward.setPath("boardinside.jsp?action=boardinside&no="+no);
		forward.setRedirect(false);
		return forward;
	}

}
