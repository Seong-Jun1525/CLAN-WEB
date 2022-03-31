<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="member.MemberDAO" %>
<%@ page import="util.SHA256" %>
<%@ page import="java.io.PrintWriter" %>
<% 
	request.setCharacterEncoding("UTF-8");
	String memberID = null;
	String code = null;
	
	if(request.getParameter("code") != null) {
		code = request.getParameter("code");
	}
	
	MemberDAO memberDAO = new MemberDAO();
	if(session.getAttribute("memberID") != null) {
		memberID = (String) session.getAttribute("memberID");
	}
	if(memberID == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 해주세요')");
		script.println("location.href = '../dropmenu/login.jsp'");
		script.println("</script>");
		script.close();
		return;
	}
	
	String memberEmail = memberDAO.getMemberEmail(memberID);
	boolean isRight = (new SHA256().getSHA256(memberEmail).equals(code)) ? true : false;
	
	if(isRight == true) {
		memberDAO.setMemberEmailChecked(memberID);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('인증에 성공했습니다.')");
		script.println("location.href = '../../index.jsp'");
		script.println("</script>");
		script.close();
		return;
	}
	else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 코드입니다.')");
		script.println("location.href = '../../index.jsp'");
		script.println("</script>");
		script.close();
		return;
	}
%>