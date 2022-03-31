<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="util.SHA256" %>
<%@ page import="java.io.PrintWriter" %>
<% 
	request.setCharacterEncoding("UTF-8");
	String memberID = null;
	String memberPW = null;
	
	if(request.getParameter("memberID") != null) {
		memberID = request.getParameter("memberID");
	}
	if(request.getParameter("memberPW") != null) {
		memberPW = request.getParameter("memberPW");
	}
	
	if(memberID == null || memberPW == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.')");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
	
	MemberDAO memberDAO = new MemberDAO();
	int result = memberDAO.login(memberID, memberPW);
	if(result == 1) {
		session.setAttribute("memberID", memberID);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = '../../index.jsp'");
		script.println("</script>");
		script.close();
		return;
	}
	else if(result == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호가 틀립니다.')");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
	else if(result == -1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('존재하지 않는 아이디입니다.')");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
	else if(result == -2) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('DB오류입니다.')");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
%>