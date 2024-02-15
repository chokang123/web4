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

public class BoardSubSandAction implements IAction {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		String content = req.getParameter("subText");
		String autor = req.getParameter("bid");
		String no = req.getParameter("contentno");
		long l = Long.parseLong(no);
		forward.setPath("boardinside.do?action=boardinside&no="+no);
		forward.setRedirect(false);
		MVBoardSubDAO dao = new MVBoardSubDAO();
		MVBoardSubVO vo = new MVBoardSubVO();
		vo.setAutor(autor);
		vo.setNo(l);
		vo.setContent(content);
		dao.insert(vo);
		MVBoardDAO sdao = new MVBoardDAO();
		MVBoardVO svo = new MVBoardVO();
		
		System.out.println(no);
		svo.setNo(l);
		ArrayList<MVBoardVO> data = sdao.oneOut(svo);
		req.setAttribute("data", data);
		return forward;
	}

}
