<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="member.MemberDTO" %>
<%@ page import="member.MemberDAO" %>
<%@ page import="util.SHA256" %>
<%@ page import="java.io.PrintWriter" %>
<% 
	request.setCharacterEncoding("UTF-8");

	String memberID = null;
	if(session.getAttribute("memberID") != null) {
		memberID = (String) session.getAttribute("memberID");
	}
	if(memberID != null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인이 된 상태 입니다.')");
		script.println("location.href = '../../index.jsp'");
		script.println("</script>");
		script.close();
		return;
	}
	
	String memberPW = null;
	String memberTribe = null;
	String memberEmail = null;
	int LadderScore = 0;
	
	if(request.getParameter("memberID") != null) {
		memberID = request.getParameter("memberID");
	}
	if(request.getParameter("memberPW1") != null) {
		memberPW = request.getParameter("memberPW1");
	}
	if(request.getParameter("tribe") != null) {
		memberTribe = request.getParameter("tribe");
	}
	if(request.getParameter("memberEmail") != null) {
		memberEmail = request.getParameter("memberEmail");
	}
	if(request.getParameter("ladderScore") != null) {
		LadderScore = Integer.parseInt(request.getParameter("ladderScore"));
	}
	
	if(memberID == null || memberPW == null || memberTribe == null || memberEmail == null || LadderScore == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.')");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
	
	MemberDAO memberDAO = new MemberDAO();
	MemberDTO memberDTO = new MemberDTO();
	int result = memberDAO.join(new MemberDTO(memberID, memberPW, memberTribe, LadderScore, memberEmail, SHA256.getSHA256(memberEmail), false, 0, 0, 0, 0, 1500));
	if(result == -1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 존재하는 아이디입니다.')");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
	else {
		session.setAttribute("memberID", memberID);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = 'emailSendAction.jsp'");
		script.println("</script>");
		script.close();
		return;
	}
%>